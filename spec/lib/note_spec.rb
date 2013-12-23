require 'spec_helper'

describe Note do
  it "initializes its value based on
    the position on chromatic scale" do
    Note.new("c#").value.should == 4
  end

  it "the \"flat\" version of the
    same note should give the same result" do
    Note.new("db").value.should == 4
  end
end
