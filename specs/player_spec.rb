require('Minitest/autorun')
require('Minitest/rg')
require_relative('../player.rb')

class TestPlayer < Minitest::Test

  def setup
    @player = Player.new("Big Steve")
  end

  def test_has_name
    assert_equal("Big Steve", @player.name)
  end

end