require 'deck'

RSpec.describe Deck do 
  subject(:deck){deck = Deck.new}
  let(:size){size = deck.cards.length}
  describe "#initialize" do 
    it "has 52 cards" do
      expect(size).to eq 52
    end

  end

  
  describe "#draw" do 
    #let(:size2){size2 = deck.cards.length}
    #let(:card){card = deck.draw}
    #let(:size2){size2 = deck.cards.length}

    it "returns a card" do
      card = deck.draw
      expect(card).to be_a(Card)
    end

    it "decreases the size of the deck by 1" do
      
      size = deck.cards.length 
      deck.draw
      expect(deck.cards.length).to eq size-1
    end
  end
end