require 'spec_helper'

describe GetFocused do
  it 'should return a hello message' do
    expect(GetFocused::Hello.new.world).to eql 'Hello World'
  end
end
