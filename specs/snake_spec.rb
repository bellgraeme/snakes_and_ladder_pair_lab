require('Minitest/autorun')
require('Minitest/rg')
require_relative('../snake.rb')

class TestSnake < Minitest::Test

  def setup
    @snake = Snake.new("snake1", 25, 3)
  end

  def test_has_name
    assert_equal("snake1", @snake.name)
  end

  def test_start_position
    assert_equal(25, @snake.start_position)
  end

  def test_end_position
    assert_equal(3, @snake.end_position)
  end


end