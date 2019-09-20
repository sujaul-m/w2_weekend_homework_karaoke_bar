require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../bar.rb")
require_relative("../drink.rb")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(100)
  end

  def test_bar_has_balance
    assert_equal(100, @bar.balance())
  end
end
