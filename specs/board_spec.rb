require('Minitest/autorun')
require('Minitest/rg')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../ladder.rb')
require_relative('../snake.rb')
require_relative('../board.rb')

class TestBoard < Minitest::Test

  def setup
    player1 = Player.new("Dave")
    player2 = Player.new("Graeme")
    player3 = Player.new("Robert")
    player4 = Player.new("Bob")
    @board = Board.new(player1, player2, player3, player4)
    @dice = Dice.new
  end

  def test_board_layout_has_101_spaces
    board_layout = @board.board_layout
    assert_equal(101, board_layout.size)
  end

  def test_board_layout_has_snakes
    board_layout = @board.board_layout
    snake_count = 0
    for index in board_layout
      if index.class == Snake
        snake_count += 1
      end
    end
    assert_equal(7, snake_count)
  end

  def test_board_layout_has_ladders
    board_layout = @board.board_layout
    ladder_count = 0
    for index in board_layout
      if index.class == Ladder
        ladder_count += 1
      end
    end
    assert_equal(7, ladder_count)
  end

  def test_game_has_players
    player_count = @board.players.size
    assert_equal(4, player_count)
  end

  # def test_start_the_game__player3_at_0
  #   player_position = @board.players[3].check_position
  #   assert_equal(0, player_position)
  # end

  # def test_start_the_game__rolls_the_dice
  #   @board
  #   player_position = @board.players[3].check_position
  #   assert_equal(!0, )
  # end

  
  def test_player_turn_result_ladder
    player = @board.players[0]
    initial_position = player.check_position
    @board.player_turn(@dice, player)

    if @dice.dice_number == 2
      assert_equal(21, player.check_position)
    else
      assert_equal((initial_position += @dice.dice_number), player.check_position)
    end
  end

  def test_there_is_a_winner
    player = @board.players[0]
    
    1000.times {@board.player_turn(@dice, player)}

    assert_equal(true, player.game_won?)
  end

end