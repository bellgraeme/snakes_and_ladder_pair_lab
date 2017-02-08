class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @position = 1
    @game_winner = false
  end

  def check_position
    return @position
  end
  def dice_moves_player(dice)
    @position += dice.roll
  end

  def ladder_move(ladder)
    @position = ladder.end_position
  end

  def snake_move(snake)
    @position = snake.end_position
  end

  def change_to_winner
    @game_winner = true
  end

  def game_won?
    return @game_winner
  end

  

  

end