require 'spec_helper'

describe GetFocused::Host do
  describe 'os' do
    it 'should identify the current os when running in a mac' do
      RUBY_PLATFORM = 'universal.x86_64-darwin13'
      expect(GetFocused::Host.new.os).to eql :macosx
    end

    it 'should identify the current os when running in a linux' do
      RUBY_PLATFORM = 'linux'
      expect(GetFocused::Host.new.os).to eql :linux
    end

    it 'should raise an error when it is not running either on a linux or a mac' do
      RUBY_PLATFORM = 'mswin'
      expect{GetFocused::Host.new.os}.to raise_error(RuntimeError)
    end
  end

  describe 'file_source' do
    it 'should find the hosts file when in ubuntu' do
      RUBY_PLATFORM = 'linux'
      file_source = GetFocused::Host.new.file_source
      expect(file_source).to eql '/etc/hosts'
      expect(File.exist? file_source).to be_truthy
    end
  end
end
