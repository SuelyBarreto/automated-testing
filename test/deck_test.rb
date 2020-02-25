require_relative 'test_helper'

describe Deck do

  before do
    @deck = Deck.new
  end

  it "can be instantiated" do 
  # Be able to be instantiated.
    expect(@deck).must_be_instance_of Deck
  end
  
  it "has 52 cards" do
  # Be created with 52 Card objects as attributes.
    expect(@deck.cards).must_be_instance_of Array
    expect(@deck.cards.length).must_equal 52
    @deck.cards.each do |card|
      expect(card).must_be_instance_of Card
    end
  end

  it "has a count method" do
    # Have a count method which returns the number of cards in the Deck.
    expect(@deck).must_respond_to :count
    expect(@deck.count).must_be_instance_of Integer
    expect(@deck.count).must_equal 52  
  end

  it "has a shuffle method" do
  # Have a shuffle method
    expect(@deck).must_respond_to :shuffle
    copy = @deck.cards[0..-1]
    @deck.shuffle
    expect(@deck.cards).wont_equal copy
  end

  it "has a draw method" do
  # Have a method called draw which removes a Card from the Deck and returns the removed Card.
    expect(@deck).must_respond_to :draw
    remaining = 52
    while @deck.count > 0 do
      drawn_card = @deck.draw
      remaining -= 1
      expect(drawn_card).must_be_instance_of Card
      expect(@deck.count).must_equal remaining
    end
    drawn_card = @deck.draw
    expect(drawn_card).must_be_nil
  end

end