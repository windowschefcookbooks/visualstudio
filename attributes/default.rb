
#
# Author:: Shawn Neal (<sneal@sneal.net>)
# Cookbook Name:: visualstudio
# Attribute:: default
#
# Copyright 2013, Daptiv Solutions, LLC.
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

default['visualstudio']['edition'] = 'community'
default['visualstudio']['version'] = '2015'

# This is merged with the default['visualstudio']['<version>']['<edition>']['default_install_items']
# overwrite the <SelectableItemCustomization> here to change the AdminDeployment.xml for install.
default['visualstudio']['install_items'] = {}

# Set this attribute your self to the FQDN of the folder which contains the ISO
# default['visualstudio']['source'] = 'http://example.com:8080/visualstudio'

# Set the nuget package restore environment var for older VS versions
default['visualstudio']['enable_nuget_package_restore'] = true

# Should the extracted installer files be kept around after install?
default['visualstudio']['preserve_extracted_files'] = false

# Version specific attributes
include_attribute 'visualstudio::vs2010'
include_attribute 'visualstudio::vs2012'
include_attribute 'visualstudio::vs2013'
include_attribute 'visualstudio::vs2015'
include_attribute 'visualstudio::vs2017'
