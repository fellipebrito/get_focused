require 'thor'

module GetFocused
  class Hello < Thor
    desc 'say hello world', 'say hello world'
    def world
      'Hello World'
    end
  end
end
