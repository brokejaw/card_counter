require 'rails_helper'

describe Card do
  it "saves new model to the db" do
    Card.create!(:content => "new test card")

    expect(Card.first.content).to eq("new test card")
    expect(Card.first.content).to_not eq("bananarama")
  end
end