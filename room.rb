class Room

  attr_reader :room_name, :room_capacity, :room_price, :bar,  :songs_in_room

    def initialize(room_name, capacity, price, bar)
      @room_name = room_name
      @room_capacity = capacity
      @room_price = price
      @bar = bar
      @songs_in_room = []
      @guests = []
    end

    def song_count
      return @songs_in_room.count
    end

    def add_song(song)
      @songs_in_room << song
    end

    def guest_count
      return @guests.count
    end

    def add_guest(guest)
      @guests << guest
    end

    def remove_guest(guest)
      @guests.pop()
    end





end
