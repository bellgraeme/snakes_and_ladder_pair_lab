require_relative('./player.rb')
require_relative('./dice.rb')
require_relative('./ladder.rb')
require_relative('./snake.rb')



class Board

  attr_reader :board_layout

  def initialize  
    @board_layout = []
    100.times{@board_layout.push(nil)} 
    snake1 = Snake.new(17,13)
    snake2 = Snake.new(52,29)
    snake3 = Snake.new(57,40)
    snake4 = Snake.new(62,22)
    snake5 = Snake.new(88,18)
    snake6 = Snake.new(95,51)
    snake7 = Snake.new(97,79)

    @board_layout[17] = snake1
    @board_layout[52] = snake2
    @board_layout[57] = snake3
    @board_layout[62] = snake4
    @board_layout[88] = snake5
    @board_layout[95] = snake6
    @board_layout[97] = snake7

    ladder1 = Ladder.new(3, 21)
    ladder2 = Ladder.new(8, 30)
    ladder3 = Ladder.new(28, 84)
    ladder4 = Ladder.new(58, 77)
    ladder5 = Ladder.new(75, 86)
    ladder6 = Ladder.new(80, 100)
    ladder7 = Ladder.new(90, 91)

    @board_layout[3] = ladder1
    @board_layout[8] = ladder2
    @board_layout[28] = ladder3
    @board_layout[58] = ladder4
    @board_layout[75] = ladder5
    @board_layout[80] = ladder6
    @board_layout[90] = ladder7
  end


end