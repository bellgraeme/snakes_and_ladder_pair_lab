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

    @board_layout[16] = snake1
    @board_layout[51] = snake2
    @board_layout[56] = snake3
    @board_layout[61] = snake4
    @board_layout[87] = snake5
    @board_layout[94] = snake6
    @board_layout[96] = snake7
  end


end