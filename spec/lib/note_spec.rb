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

  it "can sum semitones to itself" do
    (Note.new("c#") + 0.5).value.should == Note.new("d").value
  end

  it "can sum full tones to itself" do
    (Note.new("c#") + 1.0).value.should == Note.new("d#").value
  end

  it "can sum till the end (g#) and start over (a)" do
    (Note.new("g") + 1.0).value.should == Note.new("a").value
  end
end
