
#
# Author:: Shawn Neal
# Cookbook Name:: visualstudio
# Recipe:: install_update
#
# Copyright 2015, Shawn Neal
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

::Chef::Recipe.send(:include, Visualstudio::Helper)

# Create list of unique VS versions that have updates
versions_with_updates = versions.reject { |v| node['visualstudio'][v]['update'].nil? }

# Install updates for each VS version
versions_with_updates.each do |version|
  url = source_download_url(version, 'update')
  visualstudio_update "visualstudio_#{version}_update" do
    version version
    install_dir node['visualstudio'][version]['install_dir']
    source url
    package_name node['visualstudio'][version]['update']['package_name']
    checksum node['visualstudio'][version]['update']['checksum']
    preserve_extracted_files node['visualstudio']['preserve_extracted_files']
    installer_file installer_file node['visualstudio'][version]['update']['installer_file']
  end
end
