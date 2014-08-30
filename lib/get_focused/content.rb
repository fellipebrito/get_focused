require 'thor'

module GetFocused
  class Content
    def original
      File.open(GetFocused::Host.new.file_source, 'rb').read
    end
  end
end
