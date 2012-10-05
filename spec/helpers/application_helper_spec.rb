require "spec_helper"

describe ApplicationHelper do
  describe "#page_title" do
    context "when passed a valid title" do
      it "should return a piped page title" do
        helper.page_title("Test").should == "gbchaosmaster | Test"
      end
    end

    context "when passed a blank title" do
      it "should return a generic page title" do
        [nil, "", " "].each do |test|
          helper.page_title(test).should == "gbchaosmaster"
        end
      end
    end
  end
end
