require('Minitest/autorun')
require('Minitest/rg')
require_relative('../ladder.rb')


class TestLadder < Minitest::Test

  def setup
    @ladder = Ladder.new("ladder1", 5, 16)
  end

  def test_has_name
    assert_equal("ladder1", @ladder.name)
  end

end