require 'rails_helper'

describe "Author", :type => :model do
  let(:author) {Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')}
  subject{author}
  it "should have correct first name, last name and homepage" do
    expect(author.first_name).to eq "Alan"
    expect(author.last_name).to eq "Turing"
    expect(author.homepage).to eq "http://wikipedia.org/Alan_Turing"
  end

  it "should have correct name based on first and last name" do
    expect(author.name).to eq "Alan Turing"
  end
end