require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../bar.rb")
require_relative("../drink.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Smooth Criminal", 100.00)
  end

  def test_guest_has_favourite_song
    assert_equal("Smooth Criminal", @guest1.favourite_song())
  end

  def test_guest_has_money
    assert_equal(100.00, @guest1.wallet())
  end

end
