require('Minitest/autorun')
require('Minitest/rg')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../ladder.rb')
require_relative('../snake.rb')
require_relative('../board.rb')


class TestSnake < Minitest::Test

  def setup
    @snake = Snake.new(25, 3)
  end

  def test_start_position
    assert_equal(25, @snake.start_position)
  end

  def test_end_position
    assert_equal(3, @snake.end_position)
  end


end