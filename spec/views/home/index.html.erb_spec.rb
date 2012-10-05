require "spec_helper"

describe "Home page" do
  subject { page }

  before { visit root_path }

  it { should have_selector "title", text: "gbchaosmaster" }
  it { should_not have_selector "title", text: "|" }
end
