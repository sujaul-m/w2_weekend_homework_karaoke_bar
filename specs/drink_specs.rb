require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../bar.rb")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 5.00)
  end

  def test_drink_has_name
    assert_equal("beer", @drink1.name())
  end

  def test_drink_has_price
    assert_equal(5.00, @drink1.price())
  end

end
