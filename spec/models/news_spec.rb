require 'spec_helper'

describe News do
  before { @news = News.new( title:   "example description",
  	                           content: "example content",
  	                           url:      "example url",
  	                           date:     Date.new) }

  subject { @news }

  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should respond_to(:url) }
  it { should respond_to(:date) }

  describe "when title is not present" do
    before { @news.title = " " }
    it { should_not be_valid }
  end
end
