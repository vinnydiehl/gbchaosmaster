require "spec_helper"

describe "About page" do
  subject { page }

  before { visit about_path }

  it { should have_selector("title", text: piped_title("About")) }
end
