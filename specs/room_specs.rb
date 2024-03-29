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

    @guest1 = Guest.new("Smooth Criminal", 100.00)

    bar = Bar.new("MJ Bar", 100)
    @room1 = Room.new("Micheal Jackson", 3, 20, bar)
  end

  def test_room_has_name
    assert_equal("Micheal Jackson", @room1.room_name())
  end

  def test_room_has_a_capacity
    assert_equal(3, @room1.room_capacity())
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

  def test_can_add_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guest_count())
  end

  def test_can_add_multiple_guests
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    assert_equal(3, @room1.guest_count())
  end

  def test_can_remove_a_guest
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.remove_guest(@guest1)
    assert_equal(1, @room1.guest_count())
  end

  def test_max_capacity_reached
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.max_capacity
    assert_equal("Room is Full, Try another room", @room1.max_capacity())
  end

  def test_max_capacity_not_reached
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.max_capacity
    assert_equal("Go in", @room1.max_capacity())
  end


end
