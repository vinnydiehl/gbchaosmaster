require "spec_helper"

describe "Nutella project page" do
  subject { page }

  before { visit projects_nutella_path }

  it { should have_selector("title", text: piped_title("Nutella")) }
end
