require_relative 'deck'

class Hand
attr_reader :cards
  def initialize(deck)
    @deck = deck
    @cards = []
    5.times {@cards << @deck.draw}
  end

  def hand_type
    cardhash = Hash.new{0}
    @cards.each do |card|
      cardhash[card.value] += 1
    end
    cardhash.max_by{|k,v| v}
  end

  def beat?(other_hand) 
    hand1 = self.hand_type
    hand1[0] = VALUES.index(hand1[0])
    hand2[0] = VALUES.index(hand1[1])
    return true if hand1[1] > hand2[1]
    return false if hand1[1] < hand2[1]
    return true if hand1[0] > hand2[0]
    return false if hand1[0] < hand2[0]

  end

end