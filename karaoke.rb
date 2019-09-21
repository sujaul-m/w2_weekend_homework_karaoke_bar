class Karaoke

  attr_reader :karaoke_bar_name, :karaoke_bar_capacity, :karaoke_room_name

    def initialize(name)
      @karaoke_bar_name = name
      @karaoke_bar_capacity = 30
      @karaoke_room_name = []
    end

    def room_count
      return @karaoke_room_name.count
    end

    def add_room(room)
      @karaoke_room_name << room
    end

    def purchase(bar, customer, drink, room)
      customer.buy_drink(drink)
      customer.buy_room_ticket(room)
      bar.sell_drink(drink)
      bar.sell_room_ticket(room)
    end

    def song_check(guest,room)
      for song in room.songs_in_room
        if guest.favourite_song == room.songs_in_room
          return guest.cheer
        else
          return "Song not in list"
        end
      end
    end


end
