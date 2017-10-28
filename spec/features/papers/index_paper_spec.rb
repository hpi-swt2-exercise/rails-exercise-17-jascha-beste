require 'rails_helper'

describe "Index paper page", type: :feature do

  it "should render without error" do
    visit papers_path
  end

  it "should be able to select by year" do
    paper1 = FactoryGirl.create :paper
    paper2 = FactoryGirl.create :paper
    paper2.title = "title2"
    paper2.year = 1968
    paper2.save!
    visit papers_path papers: 1950
    expect(page).to_not have_content(paper2.title)
  end

  it "should show a papers title if one exists" do
    paper = FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_content(paper.title)
  end

  it "should have new paper link" do
    visit papers_path
    expect(page).to have_css "a", text: "Add paper"
  end

  it "should have show link if paper exists" do
    FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_css "a", text: "Show"
  end

  it "should have edit link if paper exists" do
    FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_css "a", text: "Edit"
  end

  it "should have delete link if paper exists" do
    FactoryGirl.create :paper
    visit papers_path

    expect(page).to have_css "a", text: "Destroy"
  end
end
