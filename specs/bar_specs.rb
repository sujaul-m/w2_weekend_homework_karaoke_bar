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
    @drink1 = Drink.new("beer", 5.00)
    @drink2 = Drink.new("wine", 3.00)
    @drink3 = Drink.new("whiskey", 8.00)
    @bar = Bar.new("MJ Bar", 100)
  end

  def test_bar_has_name
    assert_equal("MJ Bar", @bar.bar_name())
  end

  def test_bar_has_balance
    assert_equal(100, @bar.balance())
  end

  def test_can_add_drinks
    @bar.add_drink(@drink1)
    assert_equal(1, @bar.drink_count())
  end

  def test_can_add_multiple_drinks
    @bar.add_drink(@drink1)
    @bar.add_drink(@drink2)
    @bar.add_drink(@drink3)
    assert_equal(3, @bar.drink_count())
  end

end
