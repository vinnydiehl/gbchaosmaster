require "spec_helper"

describe "NDS Toolkit project page" do
  subject { page }

  before { visit projects_ndstoolkit_path }

  it { should have_selector("title", text: piped_title("NDS Toolkit")) }
end
