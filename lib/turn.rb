class Turn 
    #methodsd
    #1)initialize(string, card)
    def initialize(guess, card)
        @guess=guess
        @card=card
    end
    def guess
        @guess 
    end
    def card
        @card
    end
    def correct? 
        
        @card.answer == @guess
    end
    def feedback
        if correct?
            return "Correct!"
        else 
            return "Incorrect."
        end
    end
end
   #2) guess - This method returns the guess
    #3) correct? - This method returns a boolean indicating if the guess matched the answer on the Card.
    #4) feedback - This method either returns "Correct!" or "Incorrect." based on whether the guess was correct or not.
    #isn't all that above? why do I need a whole other class? 

    