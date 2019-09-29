require 'pry'

class Deck
    attr_accessor :cards

    def initialize
        @cards = []

        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

        suits.each do |suit|
            ranks.each do |rank|
                @cards << "#{rank} of #{suit}"
            end
        end
    end

    def cards
        @cards
    end

    def choose_card
        chosen_card = self.cards.sample
        self.cards = self.cards.select{ |card| card != chosen_card }
        chosen_card
    end

end

deck1 = Deck.new

binding.pry
0