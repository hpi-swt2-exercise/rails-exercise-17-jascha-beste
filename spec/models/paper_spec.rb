require 'rails_helper'

RSpec.describe Paper, type: :model do
  let(:paper) {Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460', year: 1950)}
  let(:invalid_paper_title) {Paper.new(title: nil, venue: 'Mind 49: 433-460', year: 1950)}
  let(:invalid_paper_venue) {Paper.new(title: nil, venue: 'Mind 49: 433-460', year: 1950)}
  let(:invalid_paper_year) {Paper.new(title: nil, venue: 'Mind 49: 433-460', year: 1950)}
  let(:invalid_paper_year_noninteger) {Paper.new(title: nil, venue: 'Mind 49: 433-460', year: 'ninteenfiddy')}


  it "should have correct title, venue and year" do
    expect(paper.title).to eq "COMPUTING MACHINERY AND INTELLIGENCE"
    expect(paper.venue).to eq "Mind 49: 433-460"
    expect(paper.year).to eq 1950
  end

  #it "should have correct name based on first and last name" do
  #  expect(author.name).to eq "Alan Turing"
  #end

  it "should be invalid without title" do
    expect(invalid_paper_title).to_not be_valid
  end

  it "should be invalid without venue" do
    expect(invalid_paper_venue).to_not be_valid
  end

  it "should be invalid without year" do
    expect(invalid_paper_year).to_not be_valid
  end

  it "should be invalid without integer year" do
    expect(invalid_paper_year_noninteger).to_not be_valid
  end

  it "should have an empty list of authors" do
    expect(paper.authors).to eq []
  end
end
