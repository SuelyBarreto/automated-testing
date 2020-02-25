
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        @cards << card
      end
    end
  end

  # removes a Card from the Deck and returns the removed Card
  def draw
    return @cards.delete_at(0)
  end

  # 
  def shuffle
    @cards.shuffle!
  end

  # 
  def count
    return @cards.length
  end
end
