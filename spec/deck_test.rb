require ./lib/deck
require ./lib/card

Rspec.describe Deck do
    # A Deck is initialized with an array of Card objects.
    it "makes a deck" do
        card_0= Card.new("what is the capital of Alaska?", "Juneau", :Geography)
        card_1= Card.new("a code test", "What can I not write yet?", :Ruby)
        card_2= Card.new("my mind", "what have you lost recently?", :Self)
        deck_0= Deck.new([card_0, card_1, card_2])
        expect(deck_0).to be_instance_of(Deck)
    end
    it "the deck has multiple cards in it" do
        card_0= Card.new("what is the capital of Alaska?", "Juneau", :Geography)
        card_1= Card.new("a code test", "What can I not write yet?", :Ruby)
        card_2= Card.new("my mind", "what have you lost recently?", :Self)
        deck_0= Deck.new([card_0, card_1, card_2])
        #parenthesis surround what is passed in. [] mark the array itself
        expect(deck_0.cards).to eq([card_0, card_1, card_2])
    end
    #card count function here
    it "has this number of cards" do
        card_0= Card.new("what is the capital of Alaska?", "Juneau", :Geography)
        card_1= Card.new("a code test", "What can I not write yet?", :Ruby)
        card_2= Card.new("my mind", "what have you lost recently?", :Self)
        deck_0= Deck.new([card_0, card_1, card_2])
        expect(deck_0.count).to eq(3)
    end
    #give me the cards associated with a given catergory
    it "is able to associate cards to a given category" do
        card_0= Card.new("what is the capital of Alaska?", "Juneau", :Geography)
        card_1= Card.new("a code test", "What can I not write yet?", :Ruby)
        card_2= Card.new("my mind", "what have you lost recently?", :Self)
        deck_0= Deck.new[card_0, card_1, card_2]
        expect(deck_0.cards_in_category(:Geography)).to eq([card_0])
        expect(deck_0.cards_in_category(:Ruby)).to eq([card_1])
        expect(deck_0.cards_in_category(:Self)).to eq([card_2])
        expect(deck_0.cards_in_category(:Pop)).to eq([])
    end
end