require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../bar.rb")
require_relative("../drink.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Billie Jean")
    @song2 = Song.new("Smooth Criminal")
    @song3 = Song.new("You Rock My World")
    @song4 = Song.new("Black Or White")
    @song5 = Song.new("Beat It")

    bar = Bar.new("MJ Bar", 100)
    @room1 = Room.new("Micheal Jackson", 10, 20, bar)
  end

  def test_room_has_name
    assert_equal("Micheal Jackson", @room1.room_name())
  end

  def test_room_has_a_capacity
    assert_equal(10, @room1.room_capacity())
  end

  def test_room_has_a_price
    assert_equal(20, @room1.room_price())
  end

  def test_can_add_songs
    @room1.add_song(@song1)
    assert_equal(1, @room1.song_count())
  end

  def test_can_add_multiple_songs
    @room1.add_song(@song2)
    @room1.add_song(@song3)
    @room1.add_song(@song4)
    assert_equal(3, @room1.song_count())
  end


end
