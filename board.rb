class Board

  attr_reader :board_layout

  def initialize  
    @board_layout = []

    100.times {@board_layout.push(nil)}

  end


end