require 'spec_helper'

describe Artist do
  before { @artist = Artist.new(name: "Example Artist", desc: "example description") }

  subject { @artist }

  it { should respond_to(:name) }
  it { should respond_to(:desc) }

  describe "when name is not present" do
    before { @artist.name = " " }
    it { should_not be_valid }
  end
end