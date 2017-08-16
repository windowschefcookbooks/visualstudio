
#
# Author:: Ian Kendrick (<iankendrick@gmail.com>), Shawn Neal (<sneal@sneal.net>)
# Cookbook Name:: visualstudio
# Provider:: update
#
# Copyright 2015, Ian Kendrick, Shawn Neal
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include Windows::Helper
include Visualstudio::Helper

def whyrun_supported?
  true
end

use_inline_resources

action :install do
  unless package_is_installed?(new_resource.package_name)
    converge_by("Installing #{new_resource.package_name}") do
      # Extract the ISO image to the temporary Chef cache dir
      seven_zip_archive "extract_#{setup_basename}_iso" do
        path extracted_iso_dir
        source new_resource.source
        overwrite true
        checksum new_resource.checksum
        only_if { !new_resource.source.nil? && extractable_download }
      end

      # Not an ISO but the web install
      remote_file "download__#{setup_basename}" do
        path installer_exe
        source { lazy { new_resource.source } }
        checksum new_resource.checksum
        only_if { !new_resource.source.nil? && !extractable_download }
      end

      # Ensure the target directory exists so logging doesn't fail on VS 2010
      directory "create_#{new_resource.install_dir}" do
        path new_resource.install_dir
        recursive true
      end

      # Install Visual Studio Update
      windows_package new_resource.package_name do
        source installer_exe
        installer_type :custom
        options visual_studio_options
        timeout 3600 # 1 hour
        success_codes [0, 127, 3010]
      end

      # Cleanup extracted ISO files from tmp dir
      directory "remove_#{new_resource.package_name}" do
        path extracted_iso_dir
        action :delete
        recursive true
        only_if { !new_resource.source.nil? && !new_resource.preserve_extracted_files }
      end
    end
    new_resource.updated_by_last_action(true)
  end
end

def extractable_download
  extension = ::File.extname(new_resource.source)
  extension.casecmp('.iso').zero? || extension.casecmp('.zip').zero? || extension.casecmp('.7z').zero?
end

def extracted_iso_dir
  default_path = ::File.join(
    Chef::Config[:file_cache_path],
    Digest::MD5.hexdigest(new_resource.package_name)
  )
  extract_dir = node['visualstudio']['unpack_dir'].nil? ? default_path : node['visualstudio']['unpack_dir']
  win_friendly_path(extract_dir)
end

def install_log_file
  win_friendly_path(::File.join(new_resource.install_dir, 'vsinstallupdate.log'))
end

# only base file name of source, e.g. VS2013.5
def setup_basename
  ::File.basename(new_resource.source, '.*')
end

def installer_exe
  installer = new_resource.installer_file || new_resource.version == '2010' ? 'setup.exe' : "#{setup_basename}.exe"
  installer = ::File.join(extracted_iso_dir, installer) unless new_resource.source.nil?
  installer
end

def visual_studio_options
  options = prepare_vs2017_options if new_resource.version == '2017'
  options = prepare_vs_options unless new_resource.version == '2017'

  options
end

def prepare_vs_options
  setup_options = "/Q /norestart /noweb /log \"#{install_log_file}\""
  setup_options
end

def prepare_vs2017_options
  setup_options = '--norestart --passive --wait'
  setup_options
end
