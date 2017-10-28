require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should render without error" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path paper
  end

  it "should save the paper edits on submit" do

    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)
    fill_in "paper_year", with: "1951"
    find('input[type="submit"]').click

    paper = Paper.last
    expect(paper.year).to eq 1951
  end

  it "should allow to select authors" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)

    expect(page).to have_field('Author 1')
    expect(page).to have_field('Author 2')
    expect(page).to have_field('Author 3')
    expect(page).to have_field('Author 4')
    expect(page).to have_field('Author 5')
  end

  it "authors should be pre selected" do
    paper = FactoryGirl.create :paper
    alan = FactoryGirl.create :author
    paper.authors.append alan
    visit edit_paper_path(paper)
    expect(page).to have_select('paper_author_id_1',{selected: 'Alan Turing'})
  end
end
