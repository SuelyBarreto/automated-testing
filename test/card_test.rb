require_relative 'test_helper'

describe Card do
  
  describe "You can create a Card instance" do
    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do
    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      expect(Card.new(2, :diamonds).to_s).must_equal "2 of diamonds"
      expect(Card.new(4, :spades).to_s).must_equal "4 of spades"
      expect(Card.new(8, :clubs).to_s).must_equal "8 of clubs"
      expect(Card.new(10, :hearts).to_s).must_equal "10 of hearts"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      expect(Card.new(1, :diamonds).to_s).must_equal "Ace of diamonds"
      expect(Card.new(11, :spades).to_s).must_equal "Jack of spades"
      expect(Card.new(12, :clubs).to_s).must_equal "Queen of clubs"
      expect(Card.new(13, :hearts).to_s).must_equal "King of hearts"
    end
  end

  describe "Reader methods" do
    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      expect(Card.new(1, :diamonds).value).must_equal 1
      expect(Card.new(11, :spades).value).must_equal 11
      expect(Card.new(12, :clubs).value).must_equal 12
      expect(Card.new(13, :hearts).value).must_equal 13
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      expect(Card.new(1, :diamonds).suit).must_equal :diamonds
      expect(Card.new(11, :spades).suit).must_equal :spades
      expect(Card.new(12, :clubs).suit).must_equal :clubs
      expect(Card.new(13, :hearts).suit).must_equal :hearts

    end
  end

end
