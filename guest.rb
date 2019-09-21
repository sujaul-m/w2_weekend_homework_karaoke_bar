class Guest

  attr_reader :favourite_song, :wallet

    def initialize(song, wallet)
      @favourite_song = song
      @wallet = wallet
    end

    def buy(item) #can be room price or drink
    @wallet -= item.price()
    end

    def cheer
      return "Whoo"
    end





end
