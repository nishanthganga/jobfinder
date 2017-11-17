require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "#url_parser" do
    it "adds HTML link to any given URL" do
      url = "www.jobfinderapp.com"	
      string = "Welcome to #{url}"	
      expect(helper.url_parser(string)).to eq("Welcome to <a href='#{url}' target='_blank'>#{url}</a>")
    end
  end
end