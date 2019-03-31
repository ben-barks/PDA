require('minitest/autorun')
require('minitest/rg')
require_relative('./card.rb')
require_relative('./testing_task_2.rb')

class TestCardGame < Minitest::Test

def setup
  @card1 = Card.new("spades", 1)
  @card2 = Card.new("hearts", 4)

  @cardgame1 = CardGame.new()

  @cards = [@card1, @card2]
end

def test_check_for_ace
  assert_equal(true, @cardgame1.check_for_ace(@card1))
end

def test_highest_card
  assert_equal("hearts", @cardgame1.highest_card(@card1, @card2))
end

def test_cards_total
  assert_equal("You have a total of 5", CardGame.cards_total(@cards))
end

end
