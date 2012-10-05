require "spec_helper"

describe "Contact page" do
  subject { page }

  before { visit contact_path }

  it { should have_selector("title", text: piped_title("Contact")) }
end
