require_relative 'deck'
require_relative 'card'


class Hand

  def initialize(deck)
    @player_hand = Array.new(5) {deck.card_deck.pop}
  end

  def deal
  end 



end
