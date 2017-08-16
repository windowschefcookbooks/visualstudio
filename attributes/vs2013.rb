
#
# Author:: Shawn Neal (<sneal@sneal.net>)
# Cookbook Name:: visualstudio
# Attribute:: vs2013
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
default['visualstudio']['2013']['install_dir'] =
  (ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)') + '\Microsoft Visual Studio 12.0'

# Test Professional w/Update5
default['visualstudio']['2013']['testprofessional']['installer_file'] = 'vs_testprofessional.exe'
default['visualstudio']['2013']['testprofessional']['filename'] = 'VS2013_RTM_TESTPRO_ENU.iso'
default['visualstudio']['2013']['testprofessional']['package_name'] =
  'Microsoft Visual Studio Test Professional 2013'
default['visualstudio']['2013']['testprofessional']['checksum'] =
  'b4930bb83454a2fcbc762da79a4227e92fdbef7d0b395c619829a36c3fb4ec78'
default['visualstudio']['2013']['testprofessional']['default_source'] =
  'http://download.microsoft.com/download/4/0/6/406E397F-EDBE-4437-B64F-40DF7A92A26E'

# Professional w/Update5
default['visualstudio']['2013']['professional']['installer_file'] = 'vs_professional.exe'
default['visualstudio']['2013']['professional']['filename'] =
  'vs2013.5_pro_enu.iso'
default['visualstudio']['2013']['professional']['package_name'] =
  'Microsoft Visual Studio Professional 2013'
default['visualstudio']['2013']['professional']['checksum'] =
  '85fdde5e636774c9869bcaab4d2ded83e7a9388014771bf228577eea6112b033'
default['visualstudio']['2013']['professional']['default_source'] =
  'http://download.microsoft.com/download/F/2/E/F2EFF589-F7D7-478E-B3AB-15F412DA7DEB'

# Defaults for the <SelectableItemCustomization> in AdminDeployment.xml
# These are DEFAULTS. If you wish to change the selectable items installed edit the node attributes
# default['visualstudio']['install_items']['<feature>']['selected'] etc. (see README)
default['visualstudio']['2013']['professional']['default_install_items'].tap do |h|
  h['Blend']['selected'] = false
  h['Blend']['hidden'] = false
  h['LightSwitch']['selected'] = false
  h['LightSwitch']['hidden'] = false
  h['VC_MFC_Libraries']['selected'] = true
  h['VC_MFC_Libraries']['hidden'] = false
  h['OfficeDeveloperTools']['selected'] = false
  h['OfficeDeveloperTools']['hidden'] = false
  h['SQL']['selected'] = true
  h['SQL']['hidden'] = false
  h['WebTools']['selected'] = true
  h['WebTools']['hidden'] = false
  h['SilverLight_Developer_Kit']['selected'] = true
  h['SilverLight_Developer_Kit']['hidden'] = false
  h['Win8SDK']['selected'] = false
  h['Win8SDK']['hidden'] = false
  h['WindowsPhone80']['selected'] = false
  h['WindowsPhone80']['hidden'] = false
  h['BlissHidden']['selected'] = true
  h['HelpHidden']['selected'] = true
  h['LocalDBHidden']['selected'] = true
  h['NetFX4Hidden']['selected'] = true
  h['NetFX45Hidden']['selected'] = true
  h['PortableDTPHidden']['selected'] = true
  h['PreEmptiveDotfuscatorHidden']['selected'] = true
  h['PreEmptiveAnalyticsHidden']['selected'] = true
  h['ProfilerHidden']['selected'] = true
  h['ReportingHidden']['selected'] = true
  h['SDKTools3Hidden']['selected'] = true
  h['SDKTools4Hidden']['selected'] = true
  h['Silverlight5DRTHidden']['selected'] = true
  h['SQLCEHidden']['selected'] = true
  h['SQLCLRTypesHidden']['selected'] = true
  h['SQLDACHidden']['selected'] = true
  h['SQLDOMHidden']['selected'] = true
  h['SQLSharedManagementObjectsHidden']['selected'] = true
  h['TSQLHidden']['selected'] = true
  h['VCCompilerHidden']['selected'] = true
  h['VCCoreHidden']['selected'] = true
  h['VCDebugHidden']['selected'] = true
  h['VCDesigntimeHidden']['selected'] = true
  h['VCExtendedHidden']['selected'] = true
  h['WinJSHidden']['selected'] = true
  h['WinSDKHidden']['selected'] = true
end

# Premium w/Update5
default['visualstudio']['2013']['premium']['installer_file'] = 'vs_premium.exe'
default['visualstudio']['2013']['premium']['filename'] = 'vs2013.5_prem_enu.iso'
default['visualstudio']['2013']['premium']['package_name'] = 'Microsoft Visual Studio Premium 2013'
default['visualstudio']['2013']['premium']['checksum'] =
  'bec971770b06524d82aafc370673022e9502161a8cb1840d51da08772cb69801'
default['visualstudio']['2013']['premium']['default_source'] =
  'http://download.microsoft.com/download/6/5/F/65F510B7-D597-4E80-8EFE-86DDCFCC7C43'

# Defaults for the <SelectableItemCustomization> in AdminDeployment.xml
# These are DEFAULTS. If you wish to change the selectable items installed edit the node attributes
# default['visualstudio']['install_items']['<feature>']['selected'] etc. (see README)
default['visualstudio']['2013']['premium']['default_install_items'].tap do |h|
  h['Blend']['selected'] = false
  h['Blend']['hidden'] = false
  h['LightSwitch']['selected'] = false
  h['LightSwitch']['hidden'] = false
  h['VC_MFC_Libraries']['selected'] = false
  h['VC_MFC_Libraries']['hidden'] = false
  h['OfficeDeveloperTools']['selected'] = false
  h['OfficeDeveloperTools']['hidden'] = false
  h['SQL']['selected'] = true
  h['SQL']['hidden'] = false
  h['WebTools']['selected'] = true
  h['WebTools']['hidden'] = false
  h['SilverLight_Developer_Kit']['selected'] = false
  h['SilverLight_Developer_Kit']['hidden'] = false
  h['Win8SDK']['selected'] = false
  h['Win8SDK']['hidden'] = false
  h['WindowsPhone80']['selected'] = false
  h['WindowsPhone80']['hidden'] = false
  h['BlissHidden']['selected'] = true
  h['HelpHidden']['selected'] = true
  h['IntelliTraceHidden']['selected'] = true
  h['LocalDBHidden']['selected'] = true
  h['NetFX4Hidden']['selected'] = true
  h['NetFX45Hidden']['selected'] = true
  h['PortableDTPHidden']['selected'] = true
  h['PreEmptiveDotfuscatorHidden']['selected'] = true
  h['PreEmptiveAnalyticsHidden']['selected'] = true
  h['ProfilerHidden']['selected'] = true
  h['ReportingHidden']['selected'] = true
  h['SDKTools3Hidden']['selected'] = true
  h['SDKTools4Hidden']['selected'] = true
  h['Silverlight5DRTHidden']['selected'] = true
  h['SQLCEHidden']['selected'] = true
  h['SQLCLRTypesHidden']['selected'] = true
  h['SQLDACHidden']['selected'] = true
  h['SQLDOMHidden']['selected'] = true
  h['SQLSharedManagementObjectsHidden']['selected'] = true
  h['StoryboardingHidden']['selected'] = true
  h['TSQLHidden']['selected'] = true
  h['VCCompilerHidden']['selected'] = true
  h['VCCoreHidden']['selected'] = true
  h['VCDebugHidden']['selected'] = true
  h['VCDesigntimeHidden']['selected'] = true
  h['VCExtendedHidden']['selected'] = true
  h['WinJSHidden']['selected'] = true
  h['WinSDKHidden']['selected'] = true
end

# Ultimate w/Update5
default['visualstudio']['2013']['ultimate']['installer_file'] = 'vs_ultimate.exe'
default['visualstudio']['2013']['ultimate']['filename'] = 'vs2013.5_ult_enu.iso'
default['visualstudio']['2013']['ultimate']['package_name'] =
  'Microsoft Visual Studio Ultimate 2013'
default['visualstudio']['2013']['ultimate']['checksum'] =
  '43a2f252cb3b21cce1149c212f436e9e8190ae73b489f951601a546b62752bef'
default['visualstudio']['2013']['ultimate']['default_source'] =
  'http://download.microsoft.com/download/E/2/A/E2ADF1BE-8FA0-4436-A260-8780444C8355'

# Defaults for the <SelectableItemCustomization> in AdminDeployment.xml
# These are DEFAULTS. If you wish to change the selectable items installed edit the node attributes
# default['visualstudio']['install_items']['<feature>']['selected'] etc. (see README)
default['visualstudio']['2013']['ultimate']['default_install_items'].tap do |h|
  h['Blend']['selected'] = false
  h['Blend']['hidden'] = false
  h['LightSwitch']['selected'] = false
  h['LightSwitch']['hidden'] = false
  h['VC_MFC_Libraries']['selected'] = true
  h['VC_MFC_Libraries']['hidden'] = false
  h['OfficeDeveloperTools']['selected'] = false
  h['OfficeDeveloperTools']['hidden'] = false
  h['SQL']['selected'] = true
  h['SQL']['hidden'] = false
  h['WebTools']['selected'] = true
  h['WebTools']['hidden'] = false
  h['Win8SDK']['selected'] = false
  h['Win8SDK']['hidden'] = false
  h['SilverLight_Developer_Kit']['selected'] = false
  h['SilverLight_Developer_Kit']['hidden'] = false
  h['WindowsPhone80']['selected'] = false
  h['WindowsPhone80']['hidden'] = false
  h['BlissHidden']['selected'] = true
  h['HelpHidden']['selected'] = true
  h['IntelliTraceUltimateHidden']['selected'] = true
  h['LocalDBHidden']['selected'] = true
  h['NetFX4Hidden']['selected'] = true
  h['NetFX45Hidden']['selected'] = true
  h['PortableDTPHidden']['selected'] = true
  h['PreEmptiveDotfuscatorHidden']['selected'] = true
  h['PreEmptiveAnalyticsHidden']['selected'] = true
  h['ProfilerHidden']['selected'] = true
  h['ReportingHidden']['selected'] = true
  h['SDKTools3Hidden']['selected'] = true
  h['SDKTools4Hidden']['selected'] = true
  h['Silverlight5DRTHidden']['selected'] = true
  h['SQLCEHidden']['selected'] = true
  h['SQLCLRTypesHidden']['selected'] = true
  h['SQLDACHidden']['selected'] = true
  h['SQLDOMHidden']['selected'] = true
  h['SQLSharedManagementObjectsHidden']['selected'] = true
  h['StoryboardingHidden']['selected'] = true
  h['TSQLHidden']['selected'] = true
  h['VCCompilerHidden']['selected'] = true
  h['VCCoreHidden']['selected'] = true
  h['VCDebugHidden']['selected'] = true
  h['VCDesigntimeHidden']['selected'] = true
  h['VCExtendedHidden']['selected'] = true
  h['WinJSHidden']['selected'] = true
  h['WinSDKHidden']['selected'] = true
end

# Community w/Update5
default['visualstudio']['2013']['community']['installer_file'] = 'vs_community.exe'
default['visualstudio']['2013']['community']['filename'] = 'vs2013.5_ce_enu.iso'
default['visualstudio']['2013']['community']['package_name'] =
  'Microsoft Visual Studio Community 2013 with Update 5'
default['visualstudio']['2013']['community']['checksum'] =
  '7de2340d9570895451c5f5d9f2081db860a4f753e7596e31b2742390a6d0e6bc'
default['visualstudio']['2013']['community']['default_source'] =
  'http://download.microsoft.com/download/A/A/D/AAD1AA11-FF9A-4B3C-8601-054E89260B78'

# Defaults for the <SelectableItemCustomization> in AdminDeployment.xml
# These are DEFAULTS. If you wish to change the selectable items installed edit the node attributes
# default['visualstudio']['install_items']['<feature>']['selected'] etc. (see README)
default['visualstudio']['2013']['community']['default_install_items'].tap do |h|
  h['Blend']['selected'] = true
  h['Blend']['hidden'] = false
  h['VC_MFC_Libraries']['selected'] = true
  h['VC_MFC_Libraries']['hidden'] = false
  h['SQL']['selected'] = true
  h['SQL']['hidden'] = false
  h['WebTools']['selected'] = true
  h['WebTools']['hidden'] = false
  h['SilverLight_Developer_Kit']['selected'] = true
  h['SilverLight_Developer_Kit']['hidden'] = false
  h['Win8SDK']['selected'] = true
  h['Win8SDK']['hidden'] = false
  h['WindowsPhone80']['selected'] = true
  h['WindowsPhone80']['hidden'] = false
  h['BlissHidden']['selected'] = true
  h['HelpHidden']['selected'] = true
  h['LocalDBHidden']['selected'] = true
  h['NetFX4Hidden']['selected'] = true
  h['NetFX45Hidden']['selected'] = true
  h['PortableDTPHidden']['selected'] = true
  h['PreEmptiveDotfuscatorHidden']['selected'] = true
  h['PreEmptiveAnalyticsHidden']['selected'] = true
  h['ProfilerHidden']['selected'] = true
  h['ReportingHidden']['selected'] = true
  h['SDKTools3Hidden']['selected'] = true
  h['SDKTools4Hidden']['selected'] = true
  h['Silverlight5DRTHidden']['selected'] = true
  h['SQLCEHidden']['selected'] = true
  h['SQLCLRTypesHidden']['selected'] = true
  h['SQLDACHidden']['selected'] = true
  h['SQLDOMHidden']['selected'] = true
  h['SQLSharedManagementObjectsHidden']['selected'] = true
  h['TSQLHidden']['selected'] = true
  h['VCCompilerHidden']['selected'] = true
  h['VCCoreHidden']['selected'] = true
  h['VCDebugHidden']['selected'] = true
  h['VCDesigntimeHidden']['selected'] = true
  h['VCExtendedHidden']['selected'] = true
  h['WinJSHidden']['selected'] = true
  h['WinSDKHidden']['selected'] = true
end

# Update 5
default['visualstudio']['2013']['update']['filename'] = 'VS2013.5.iso'
default['visualstudio']['2013']['update']['checksum'] =
  'baa3e1286bf847ffb1ba6191f14494aa5f0b856ea258284d99924481ea83c6cf'
default['visualstudio']['2013']['update']['package_name'] =
  'Visual Studio 2013 Update 5 (KB3021976)'
default['visualstudio']['2013']['update']['default_source'] =
  'http://download.microsoft.com/download/A/F/9/AF95E6F8-2E6E-49D0-A48A-8E918D7FD768'
default['visualstudio']['2013']['update']['installer_file'] = nil
