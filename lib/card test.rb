#test for card
require './lib/card'

RSpec.describe Card do
    #using RSpec library aka gem in Ruby 
  it 'exists' do
    #it- aka test in other languages. 
    #do denotes new block
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    #card is variable. Card is class of the thing we are making.
    expect(card).to be_instance_of(Card) 
    #relationship of a thing to a Thing
  end

  it 'has a question' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.question).to eq("What is the capital of Alaska?")
  end

  it 'has an answer' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.answer).to eq("Juneau")
  end

  it 'has a category' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.category).to eq(:Geography)
  end
end