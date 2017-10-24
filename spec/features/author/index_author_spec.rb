require 'rails_helper'

describe "Index author page", type: :feature do

  it "should render without error" do
    visit authors_path
  end

  it "should show an authors name if one exists" do
    alan = FactoryGirl.create :author
    visit authors_path

    expect(page).to have_content(alan.name)
  end
end
