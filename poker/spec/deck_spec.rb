require 'rspec'
require 'deck'


RSpec.describe "deck" do
  subject(:deck) {Deck.new}

  describe "#initialize" do
    it "creates a deck of 52 cards" do
      expect(deck.card_deck.size).to eq(52)
    end

    it "creates a deck with all 4 suits" do
      expect(deck.card_deck[0].suit).to eq("spade")
      expect(deck.card_deck[13].suit).to eq("heart")
      expect(deck.card_deck[26].suit).to eq("club")
      expect(deck.card_deck[39].suit).to eq("diamond")
    end
  end
end
