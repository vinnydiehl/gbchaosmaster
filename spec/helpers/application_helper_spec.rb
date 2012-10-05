require "spec_helper"

describe ApplicationHelper do
  describe "#page_title" do
    context "when passed a valid title" do
      it "returns a piped page title" do
        helper.page_title("Test").should == "gbchaosmaster | Test"
      end
    end

    context "when passed a blank title" do
      it "returns a generic page title" do
        [nil, "", " "].each do |test|
          helper.page_title(test).should == "gbchaosmaster"
        end
      end
    end
  end

  describe "#nav_link" do
    context "when on the requested page" do
      before { stub!(:current_page?).and_return true }

      it "returns an active element" do
        nav_link("Home", root_path).should ==
          "<li class=\"active\"><a href=\"#{root_path}\">Home</a></li>"
      end
    end

    context "when not on the requested page" do
      before { stub!(:current_page?).and_return false }

      it "returns an inactive element" do
        nav_link("Home", root_path).should ==
          "<li><a href=\"#{root_path}\">Home</a></li>"
      end
    end
  end
end
