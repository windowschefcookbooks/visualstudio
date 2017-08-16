
#
# Author:: Ian Kendrick (<iankendrick@gmail.com>)
# Cookbook Name:: visualstudio
# Attribute:: vs2010
#
# Copyright 2015, Ian Kendrick
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

# Currently you cannot change this, doing so will break the cookbook
default['visualstudio']['2010']['install_dir'] =
  (ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)') + '\Microsoft Visual Studio 10.0'

# VS 2010 Professional
default['visualstudio']['2010']['professional']['filename'] =
  'en_visual_studio_2010_professional_x86_dvd_509727.iso'
default['visualstudio']['2010']['professional']['package_name'] =
  'Microsoft Visual Studio 2010 Professional - ENU'
default['visualstudio']['2010']['professional']['checksum'] =
  'bdfba5df0bd72cffdb398fe885d9e36d052617647c0ae4fd0579a8fc785c95ba'
default['visualstudio']['2010']['professional']['installer_file'] = File.join('setup', 'setup.exe')
default['visualstudio']['2010']['professional']['config_file'] = nil

# VS 2010 Ultimate
default['visualstudio']['2010']['ultimate']['filename'] =
  'en_visual_studio_2010_ultimate_x86_dvd_509116.iso'
default['visualstudio']['2010']['ultimate']['package_name'] =
  'Microsoft Visual Studio 2010 Ultimate - ENU'
default['visualstudio']['2010']['ultimate']['checksum'] =
  '602926C864FA1DDC087FEFB1ED952216DA4122D4DB774050D8E9373D3E4BFF98'
default['visualstudio']['2010']['ultimate']['installer_file'] = File.join('setup', 'setup.exe')
default['visualstudio']['2010']['ultimate']['config_file'] = nil

# VS 2010 SP1
default['visualstudio']['2010']['update']['filename'] = 'VS2010SP1dvd1.iso'
default['visualstudio']['2010']['update']['checksum'] =
  'fce24f0e3f95fdeb54b806be3266f3b61a1e6b5b78c7e6c13c36fc1a6f5ba0ad'
default['visualstudio']['2010']['update']['package_name'] =
  'Microsoft Visual Studio 2010 Service Pack 1'
default['visualstudio']['2010']['update']['default_source'] =
  'http://download.microsoft.com/download/E/B/A/EBA0A152-F426-47E6-9E3F-EFB686E3CA20'
default['visualstudio']['2010']['update']['installer_file'] = nil
