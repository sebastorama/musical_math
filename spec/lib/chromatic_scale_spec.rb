require 'spec_helper'

describe "ChromaticScale" do
  describe '.note_for_number' do
    let(:chromatic_scale) { ChromaticScale.new }

    it "returns the note, given a number" do
      chromatic_scale.note_for_number(2).should == "c#"
    end

    it "returns the bemolized note when appropriate" do
      chromatic_scale.note_for_number(2, :descending).should == "db"
    end
  end
end
