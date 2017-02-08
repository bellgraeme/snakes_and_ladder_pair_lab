class Dice

  attr_reader :dice_number

  def initialize
    @dice_number = 1
  end

  def roll
    @dice_number = rand(1..6)
  end

end