require_relative "card"


class Deck
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze
  SUITS = %w(spades hearts clubs diamonds).freeze
    
  attr_reader :cards
  def initialize
    @cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << Card.new(value, suit)
      end
    end
    @cards.shuffle!
  end

  def draw
    @cards.pop
  end

end