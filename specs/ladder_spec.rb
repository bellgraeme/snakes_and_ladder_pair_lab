require('Minitest/autorun')
require('Minitest/rg')
require_relative('../ladder.rb')


class TestLadder < Minitest::Test

  def setup
    @ladder = Ladder.new(5, 16)
  end

  def test_has_start_position
    assert_equal(5, @ladder.start_position)
  end

  def test_has_end_position
    assert_equal(16, @ladder.end_position)
  end

end