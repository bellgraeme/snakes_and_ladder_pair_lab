require('Minitest/autorun')
require('Minitest/rg')
require_relative('../player.rb')
require_relative('../dice.rb')

class TestPlayer < Minitest::Test

  def setup
    @player = Player.new("Big Steve")
    @dice = Dice.new

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

  # def  test_ladder_move


  #   assert_equal(@player.check_position, )
  # end
end