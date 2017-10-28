require 'rails_helper'

describe "Show paper page", type: :feature do
  it "should render without errors" do
    paper = FactoryGirl.create :paper
    visit paper_path paper
  end

  it "should have label Name and Homepage" do
    paper = FactoryGirl.create :paper
    alan = FactoryGirl.create :author
    paper.authors.append alan
    visit paper_path paper

    expect(page).to have_content(paper.title)
    expect(page).to have_content(paper.venue)
    expect(page).to have_content(paper.year)
    expect(page).to have_content(alan.name)
  end
end