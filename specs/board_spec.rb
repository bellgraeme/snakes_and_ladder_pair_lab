require('Minitest/autorun')
require('Minitest/rg')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../ladder.rb')
require_relative('../snake.rb')
require_relative('../board.rb')

class TestBoard < Minitest::Test

  def setup
    @board = Board.new
  end

  def test_board_layout_has_100_spaces
    board_layout = @board.board_layout
    assert_equal(100, board_layout.size)
  end

  def test_board_layout_has_snakes
    board_layout = @board.board_layout
    snake_count = 0
    for index in board_layout
      if index.class == Snake
        snake_count += 1
      end
    end
    assert_equal(7, snake_count)
  end

  



end