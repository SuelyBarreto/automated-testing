
# card.rb

class Card
  attr_reader :value, :suit

  # Constructor
  def initialize(value, suit)
    if value < 1 || value > 13
      raise ArgumentError, "Value must be between 1 and 13"
    end

    valid = [:hearts, :spades, :clubs, :diamonds]
    unless valid.include?(suit)
      raise ArgumentError, "Suit must be Hearts, Spades, Clubs or Diamonds"
    end
    
    @value = value
    @suit  = suit
  end

  def to_s
    return "#{value_to_s(@value)} of #{@suit.to_s}"
  end

  def value_to_s(value)
    case value
    when 1
      return "Ace"
    when 11
      return "Jack"
    when 12
      return "Queen"
    when 13
      return "King"
    else
      return value
    end
  end
end
