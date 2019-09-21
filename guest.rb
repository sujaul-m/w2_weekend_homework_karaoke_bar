class Guest

  attr_reader :favourite_song, :wallet

    def initialize(song, wallet)
      @favourite_song = song
      @wallet = wallet
    end

    def buy_drink(drink)
    @wallet -= drink.price()
    end

    def buy_room_ticket(room)
    @wallet -= room.room_price()
    end

    def cheer
      return "Whoo"
    end





end
