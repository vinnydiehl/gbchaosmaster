require "spec_helper"

describe "Projects home page" do
  subject { page }

  before { visit projects_path }

  it { should have_selector("title", text: piped_title("Projects")) }
end
