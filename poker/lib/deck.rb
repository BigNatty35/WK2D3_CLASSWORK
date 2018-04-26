require_relative 'card'



class Deck

attr_accessor :card_deck

  SUITS = ["spade","heart","club","diamond"]
  VALUES = (2..10).to_a + ["jack","queen","king","ace"]

  def self.create_deck
    deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(suit,value)
      end
    end
    deck
  end

  def initialize
    @card_deck = Deck.create_deck
  end

  def shuffle
    @card_deck.shuffle!
  end






end
