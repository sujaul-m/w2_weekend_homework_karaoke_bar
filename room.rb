class Room

  attr_reader :room_name, :room_capacity, :room_price, :bar,  :songs_in_room

    def initialize(room_name, bar)
      @room_name = room_name
      @room_capacity = 10
      @room_price = 20
      @bar = bar
      @songs_in_room = []
    end







end
