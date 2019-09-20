class Bar

  attr_reader :bar_name, :balance, :drink

    def initialize(bar_name, balance)
      @bar_name = bar_name
      @balance = balance
      @drink = []
    end

    def drink_count
      return @drink.count
    end

    def add_drink(drink)
      @drink << drink
    end






end
