require 'thor'

module GetFocused
  class Host
    def os
      case RUBY_PLATFORM
      when /darwin|mac os/
        :macosx
      when /linux/
        :linux
      else
        fail "os not supported: #{RUBY_PLATFORM}"
      end
    end

    def file_source
      case os
      when :macosx
        '/private/etc/hosts'
      when :linux
        '/etc/hosts'
      end
    end
  end
end
