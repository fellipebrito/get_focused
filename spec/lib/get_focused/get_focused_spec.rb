require 'spec_helper'
require 'get_focused'

describe GetFocused do
  it "should return a hello message" do
    expect(GetFocused::Hello.new.world).to eql 'Hello World'
  end
end
