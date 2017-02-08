class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @position = 0
  end

  def check_position
    return @position
  end
  def dice_moves_player(dice)
    @position += dice.roll
  end
end