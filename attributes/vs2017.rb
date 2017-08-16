
#
# Author:: Shawn Neal (<sneal@sneal.net>)
# Cookbook Name:: visualstudio
# Attribute:: vs2017
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

# Currently you cannot change this, doing so will break the cookbook
default['visualstudio']['2017']['install_dir'] =
  (ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)') + '\Microsoft Visual Studio 16.0'
default['visualstudio']['2017']['all'] = false
default['visualstudio']['2017']['allWorkloads'] = false
default['visualstudio']['2017']['includeRecommended'] = true
default['visualstudio']['2017']['includeOptional'] = false

# Test Professional w/Update1 https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-test-professional
default['visualstudio']['2017']['testprofessional']['installer_file'] = 'vs_testprofessional.exe'
default['visualstudio']['2017']['testprofessional']['filename'] = 'vs_testprofessional.exe'
default['visualstudio']['2017']['testprofessional']['package_name'] = 'Microsoft Visual Studio Test Professional 2017'
default['visualstudio']['2017']['testprofessional']['checksum'] = ''
default['visualstudio']['2017']['testprofessional']['default_source'] = 'https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=TestProfessional&rel=15'

# Professional w/Update1
default['visualstudio']['2017']['professional']['installer_file'] = 'vs_professional.exe'
default['visualstudio']['2017']['professional']['filename'] = 'vs_professional.exe'
default['visualstudio']['2017']['professional']['package_name'] = 'Microsoft Visual Studio Professional 2017'
default['visualstudio']['2017']['professional']['checksum'] = ''
default['visualstudio']['2017']['professional']['default_source'] = 'https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Professional&rel=15'

# Defaults for https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-professional
default['visualstudio']['2017']['professional']['default_install_items'].tap do |h|
  h['Microsoft.VisualStudio.Workload.CoreEditor']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Azure']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Data']['selected'] = true
  h['Microsoft.VisualStudio.Workload.ManagedDesktop']['selected'] = true
  h['Microsoft.VisualStudio.Workload.ManagedGame']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeCrossPlat']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeDesktop']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeGame']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeMobile']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetCoreTools']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetCrossPlat']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetWeb']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Node']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Office']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Universal']['selected'] = true
  h['Microsoft.VisualStudio.Workload.VisualStudioExtension']['selected'] = true
  h['Microsoft.VisualStudio.Workload.WebCrossPlat']['selected'] = true
  h['Component.Android.Emulator']['selected'] = true
  h['Component.GitHub.VisualStudio']['selected'] = true
  h['Microsoft.Component.Blend.SDK.WPF']['selected'] = true
  h['Microsoft.Component.HelpViewer']['selected'] = true
  h['Microsoft.Net.Component.3.5.DeveloperTools']['selected'] = true
  h['Microsoft.VisualStudio.Component.DependencyValidation.Community']['selected'] = true
  h['Microsoft.VisualStudio.Component.LinqToSql']['selected'] = true
  h['Microsoft.VisualStudio.Component.Phone.Emulator']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.Core']['selected'] = true
  h['Microsoft.VisualStudio.Component.TypeScript.2.0']['selected'] = true
end

# Community w/Update 3
default['visualstudio']['2017']['community']['installer_file'] = 'vs_community.exe'
default['visualstudio']['2017']['community']['filename'] = 'vs_community.exe'
default['visualstudio']['2017']['community']['package_name'] = 'Microsoft Visual Studio Community 2017'
default['visualstudio']['2017']['community']['checksum'] = ''
default['visualstudio']['2017']['community']['default_source'] = 'https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Community&rel=15'

# Defaults for https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community
default['visualstudio']['2017']['community']['default_install_items'].tap do |h|
  h['Microsoft.VisualStudio.Workload.CoreEditor']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Azure']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Data']['selected'] = true
  h['Microsoft.VisualStudio.Workload.ManagedDesktop']['selected'] = true
  h['Microsoft.VisualStudio.Workload.ManagedGame']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeCrossPlat']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeDesktop']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeGame']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeMobile']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetCoreTools']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetCrossPlat']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetWeb']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Node']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Office']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Universal']['selected'] = true
  h['Microsoft.VisualStudio.Workload.VisualStudioExtension']['selected'] = true
  h['Microsoft.VisualStudio.Workload.WebCrossPlat']['selected'] = true
  h['Component.Android.Emulator']['selected'] = true
  h['Component.GitHub.VisualStudio']['selected'] = true
  h['Microsoft.Component.Blend.SDK.WPF']['selected'] = true
  h['Microsoft.Component.HelpViewer']['selected'] = true
  h['Microsoft.Net.Component.3.5.DeveloperTools']['selected'] = true
  h['Microsoft.VisualStudio.Component.DependencyValidation.Community']['selected'] = true
  h['Microsoft.VisualStudio.Component.LinqToSql']['selected'] = true
  h['Microsoft.VisualStudio.Component.Phone.Emulator']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.Core']['selected'] = true
  h['Microsoft.VisualStudio.Component.TypeScript.2.0']['selected'] = true
end

# Enterprise w/Update1
default['visualstudio']['2017']['enterprise']['installer_file'] = 'vs_enterprise.exe'
default['visualstudio']['2017']['enterprise']['filename'] = 'vs_enterprise.exe'
default['visualstudio']['2017']['enterprise']['package_name'] = 'Microsoft Visual Studio Enterprise 2017'
default['visualstudio']['2017']['enterprise']['checksum'] = ''
default['visualstudio']['2017']['enterprise']['default_source'] = 'https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Enterprise&rel=15'

# Defaults for the https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-enterprise
default['visualstudio']['2017']['enterprise']['default_install_items'].tap do |h|
  h['Microsoft.VisualStudio.Workload.CoreEditor']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Azure']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Data']['selected'] = true
  h['Microsoft.VisualStudio.Workload.ManagedDesktop']['selected'] = true
  h['Microsoft.VisualStudio.Workload.ManagedGame']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeCrossPlat']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeDesktop']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeGame']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NativeMobile']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetCoreTools']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetCrossPlat']['selected'] = true
  h['Microsoft.VisualStudio.Workload.NetWeb']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Node']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Office']['selected'] = true
  h['Microsoft.VisualStudio.Workload.Universal']['selected'] = true
  h['Microsoft.VisualStudio.Workload.VisualStudioExtension']['selected'] = true
  h['Microsoft.VisualStudio.Workload.WebCrossPlat']['selected'] = true
  h['Component.Android.Emulator']['selected'] = true
  h['Component.GitHub.VisualStudio']['selected'] = true
  h['Microsoft.Component.Blend.SDK.WPF']['selected'] = true
  h['Microsoft.Component.HelpViewer']['selected'] = true
  h['Microsoft.Net.Component.3.5.DeveloperTools']['selected'] = true
  h['Microsoft.VisualStudio.Component.LinqToSql']['selected'] = true
  h['Microsoft.VisualStudio.Component.Phone.Emulator']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.CodedUITest']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.Core']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.FeedbackClient']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.MicrosoftTestManager']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.WebLoadTest']['selected'] = true
  h['Microsoft.VisualStudio.Component.TestTools.Core']['selected'] = true
  h['Microsoft.VisualStudio.Component.TypeScript.2.0']['selected'] = true
end
