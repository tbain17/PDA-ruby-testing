require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( './card_game.rb' )
require_relative( './card.rb' )

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("Heart", 5)
    @card2 = Card.new("Heart", 9)
    @card3 = Card.new("Spade", 3)
    @card4 = Card.new("Diamond", 1)

    @cards = [@card1, @card2, @card3, @card4]

    @cardGame = CardGame.new(@cards)
  end

  def test_check_for_ace()
    assert_equal(true, @cardGame.check_for_ace(@cards[3]))
    assert_equal(false, @cardGame.check_for_ace(@cards[2]))
  end

  def test_highest_card()
    result = @cardGame.highest_card(@cards[2], @cards[1])
    assert_equal(@card2, result)
  end

  def test_cards_total()
    assert_equal("You have a total of 18", @cardGame.cards_total(@cards))
  end

end
