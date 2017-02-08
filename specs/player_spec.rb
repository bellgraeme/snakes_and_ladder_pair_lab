require('Minitest/autorun')
require('Minitest/rg')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../ladder.rb')
require_relative('../snake.rb')


class TestPlayer < Minitest::Test

  def setup
    @player = Player.new("Big Steve")
    @dice = Dice.new
    @ladder = Ladder.new(2, 18)
    @snake = Snake.new(45, 39)
  end

  def test_has_name
    assert_equal("Big Steve", @player.name)
  end

  def test_check_position
    assert_equal(0, @player.check_position)
  end

  def test_dice_moves_player
    array_of_numbers = [1,2,3,4,5,6]
    end_position = @player.dice_moves_player(@dice)

    assert_equal(true, array_of_numbers.include?(end_position))
  end

  def  test_ladder_move
    @player.ladder_move(@ladder)
    assert_equal(@player.check_position, @ladder.end_position )
   end

  def test_snake_move
    @player.snake_move(@snake)
    assert_equal(@player.check_position, @snake.end_position )
  end

  def test_false__game_won?
    assert_equal(false, @player.game_won?)
  end

  def test_make_player_winner
    @player.make_player_winner
    assert_equal(true, @player.game_won?)
  end

end