require 'rails_helper'

describe "Edit author page", type: :feature do

  it "should render without error" do
    visit authors_path
  end

  it "should save the author edits on submit" do

    alan = FactoryGirl.create :author
    visit edit_author_path(alan)
    fill_in "author_last_name", with: "Mathison"
    find('input[type="submit"]').click

    author = Author.last
    expect(author.last_name).to eq "Mathison"
  end
end
