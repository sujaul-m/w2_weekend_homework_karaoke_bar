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





end
