module Fixtures::Card
  class Card_armors < Card_base
    def initialize
      super
      @card_type = "defense"

      @defense_type = "normal"
      @defense_value = 0
    end

    def update(number)
      super

    end

    def index(number)
      if number == 0
        sample
      elsif number == 1
        sample
      elsif number == 2
        sample
      elsif number == 3
        sample
      elsif number == 4
        sample
      end
    end

    def sample
      @image = Image.load("lib/images/hero.png")
      @card_name = "sample"

      @defense_value = 5
      @defense_type = "fire"
    end
  end
end