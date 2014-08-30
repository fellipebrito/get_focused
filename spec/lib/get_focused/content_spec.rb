require 'spec_helper'

describe GetFocused::Content do
  describe 'File management' do
    it 'should read hosts file content to a string' do
      file_content = File.open('/etc/hosts', 'rb').read
      expect(GetFocused::Content.new.original).to eql file_content
    end
  end
end
