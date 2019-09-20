require("minitest/autorun")
require('minitest/rg')
require_relative("../guest.rb")
require_relative("../karaoke.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../bar.rb")
require_relative("../drink.rb")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Billie Jean")
  end

  def test_song_has_name
    assert_equal("Billie Jean", @song.song_name())
  end

end
