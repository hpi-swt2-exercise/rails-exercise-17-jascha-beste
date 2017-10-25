require 'rails_helper'

describe "New paper page", type: :feature do

  it "should render without error" do
    visit new_paper_path
  end

  it "should have text input for first paper, venue, and year" do
    visit new_author_path

    expect(page).to have_field('Paper')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
  end
end