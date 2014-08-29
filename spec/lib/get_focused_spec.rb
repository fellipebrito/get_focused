require 'spec_helper'
require 'get_focused'

describe GetFocused do
  it "should return a hellow message" do
    expect(GetFocused.hi).to eql 'Hello World'
  end
end
