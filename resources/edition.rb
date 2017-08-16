
#
# Author:: Ian Kendrick (<iankendrick@gmail.com>), Shawn Neal (<sneal@sneal.net>)
# Cookbook Name:: visualstudio
# Resource:: edition
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

actions :install
default_action :install

# The VS edition: professional etc
attribute :edition, kind_of: String, name_attribute: true

# The VS version: 2010, 2012 etc
attribute :version, kind_of: String, required: true

# The VS installation directory
attribute :install_dir, kind_of: String, required: true

# The ISO full source URL
attribute :source, kind_of: String, required: false

# The installed MSI package name
attribute :package_name, kind_of: String, required: true

# The VS product key
attribute :product_key, [String, nil]

# The source ISO SHA256 checksum
attribute :checksum, kind_of: String

# Should the extracted ISO files be preserved after installation?
attribute :preserve_extracted_files, kind_of: [TrueClass, FalseClass], default: false

# The installer filename specific to the edition, defaults to vs_<edition>.exe
attribute :installer_file, kind_of: String, required: false

# VS 2010 ini path, unused for 2013+
attribute :configure_basename, kind_of: String, default: nil
