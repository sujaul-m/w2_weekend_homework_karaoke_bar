require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../bar.rb")
require_relative("../drink.rb")

class KaraokeTest < MiniTest::Test

  def setup
    @song1 = Song.new("Billie Jean")
    @song2 = Song.new("Smooth Criminal")
    @song3 = Song.new("You Rock My World")
    @drink1 = Drink.new("beer", 5.00)
    @drink2 = Drink.new("wine", 3.00)
    @guest1 = Guest.new("Smooth Criminal", 100.00)

    @bar = Bar.new("MJ Bar", 100)
    @room1 = Room.new("Micheal Jackson", 10, 20, @bar)

    @karaoke = Karaoke.new("Karaoke Bar")
  end

  def test_karaoke_bar_has_name
    assert_equal("Karaoke Bar", @karaoke.karaoke_bar_name())
  end

  def test_karaoke_bar_has_a_capacity
    assert_equal(30, @karaoke.karaoke_bar_capacity())
  end

  def test_can_add_room
    @karaoke.add_room(@room1)
    assert_equal(1, @karaoke.room_count())
  end

  def test_print_rooms_in_karaoke_bar
    @karaoke.add_room(@room1)
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    @room1.add_song(@song3)
    @bar.add_drink(@drink1)
    @bar.add_drink(@drink2)
    @room1.add_guest(@guest1)
    p @karaoke.karaoke_room_name
  end

end
