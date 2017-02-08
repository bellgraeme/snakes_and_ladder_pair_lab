require('Minitest/autorun')
require('Minitest/rg')
require_relative('../dice.rb')


class TestDice < Minitest::Test

  def setup
    @dice = Dice.new
  end

  def test_has_number_as_integer
    dice_number = @dice.dice_number
    assert_equal(true, (dice_number.is_a? Integer))
  end

  def test_return_number
    assert_equal(1, @dice.dice_number)
  end

  def test_roll_dice
    new_number = @dice.roll
    array_of_numbers = [1,2,3,4,5,6]
    assert_equal(true, array_of_numbers.include?(new_number))
  end

end