

module Visualstudio
  # VS cookbook library helper methods
  module Helper
    # Checks if the specified Windows installer package is installed
    def package_is_installed?(package_name)
      if RUBY_PLATFORM =~ /mswin|mingw32|windows/
        windows_package_is_installed?(package_name)
      else
        false
      end
    end

    # Array of VS edition/version hashes to install
    def installs
      return node['visualstudio']['installs'] unless node['visualstudio']['installs'].nil?
      [{
        'edition' => node['visualstudio']['edition'],
        'version' => node['visualstudio']['version']
      }]
    end

    # Array of unique VS versions exclusive of editions
    def versions
      installs.map { |i| i['version'] }.uniq
    end

    # Gets the version/edition ISO download URL or raises an error
    def source_download_url(version, edition)
      url = nil
      edition_node = node['visualstudio'][version][edition]
      src = iso_source(version, edition)
      return url if (src == '' || src.nil?) && (\
        edition_node['installer_file'].include?('/') \
        || edition_node['installer_file'].include?('\\') \
      )
      assert_src_is_not_nil(src, version, edition)
      url = ::File.join(src, edition_node['filename']) if src
      url
    end

    private

    # Gets the version/edition ISO download root URL
    def iso_source(version, edition)
      edition_node = node['visualstudio'][version][edition]

      src = edition_node['default_source']
      src = node['visualstudio']['source'] if node['visualstudio']['source']
      src = edition_node['source'] if edition_node['source']
      src
    end

    # Fails the Chef run if the visualstudio download source is not set
    def assert_src_is_not_nil(src, version, edition)
      return unless src.nil?
      raise 'The ISO download source is empty! '\
        "Set the node['visualstudio']['#{version}']['#{edition}']['source'] " \
        'or node[\'visualstudio\'][\'source\'] attribute and run again!'
    end

    def windows_package_is_installed?(package_name)
      require 'win32/registry'
      Win32::Registry::HKEY_LOCAL_MACHINE.open(uninstall_reg_key) do |uninstall_reg|
        uninstall_reg.each_key do |subkey, _wtime|
          software_reg_key = "#{uninstall_reg_key}\\#{subkey}"
          Win32::Registry::HKEY_LOCAL_MACHINE.open(software_reg_key) do |software_reg|
            return true if package_display_name(software_reg) == package_name
          end
        end
      end
      false
    end

    def uninstall_reg_key
      if node['kernel']['machine'] == 'x86_64'
        'SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
      else
        'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
      end
    end

    def package_display_name(software_reg)
      software_reg['DisplayName']
    rescue
      ''
    end
  end
end
