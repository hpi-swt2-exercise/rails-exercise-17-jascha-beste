require 'rails_helper'

describe "Show author page", type: :feature do
  it "should render without errors" do
    alan = FactoryGirl.create :author
    visit author_path alan
  end

  it "should have label Name and Homepage" do
    alan = FactoryGirl.create :author
    visit author_path alan

    expect(page).to have_content(alan.first_name)
    expect(page).to have_content(alan.homepage)
  end
end