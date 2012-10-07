require "spec_helper"

describe ApplicationHelper do
  describe "#controller_specific_stylesheet" do
    context "when the stylesheet exists" do
      let(:name) { "application" }
      before { controller.stub!(:controller_name).and_return name }

      it "returns the link to the stylesheet" do
        controller_specific_stylesheet.should == stylesheet_link_tag(name)
      end
    end

    context "when the stylesheet does not exist" do
      before { controller.stub!(:controller_name).and_return nil }

      it "returns nil" do
        controller_specific_stylesheet.should be_nil
      end
    end
  end

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
