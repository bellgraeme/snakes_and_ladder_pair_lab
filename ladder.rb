class Ladder

  attr_reader :name

  def initialize(name, start_position, end_position)
    @name = name
    @start_position = start_position
    @end_position = end_position
  end

end