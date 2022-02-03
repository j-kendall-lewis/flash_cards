#test for turn
    require './lib/card'
    require './lib/turn'
RSpec.describe Turn do
    it 'initialized turn is the right class' do 
        #card1 or just card?
        card1 = Card.new("what is the capital of Alaska?", "Juneau", :Geography)
        turn1 = Turn.new("Juneau", card1)
        expect(turn1).to be_instance_of(Turn)
    end

    it 'it has a method guess that returns the guess that the turn is initialized with' do 
        card1 = Card.new("what is the capital of Alaska?", "Juneau", :Geography)
        turn1 = Turn.new("Juneau", card1)
        #"juneau" is passed in
        #is Juneau within turn1
        expect(turn1.guess).to eq("Juneau")
    end
    it "calls the card method on a turn" do
        card1=Card.new("what is the capital of Alaska?", "Juneau", :Geography)
        turn1= Turn.new("Juneau", card1)
        expect(turn1.card)
        require 'pry'; binding.pry
    end
end
# initialize(string, card) - A turn is initialized with two arguments. The first is a string representing a guess to a card’s question. The second argument is a Card object representing the current flashcard being shown.
# guess - This method returns the guess
# card - This method returns the Card
# correct? - This method returns a boolean indicating if the guess matched the answer on the Card.
# feedback - This method either returns "Correct!" or "Incorrect." based on whether the guess was correct or not.

