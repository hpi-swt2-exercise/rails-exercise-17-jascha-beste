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

  it "should have new author link" do
    visit authors_path
    expect(page).to have_css "a", text: "Add author"
  end

  it "should have show link if author exists" do
    FactoryGirl.create :author
    visit authors_path

    expect(page).to have_css "a", text: "Show"
  end

  it "should have edit link if author exists" do
    FactoryGirl.create :author
    visit authors_path

    expect(page).to have_css "a", text: "Edit"
  end
end
