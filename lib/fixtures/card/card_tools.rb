module Fixtures::Card
  class Card_tools < Card_base
    def initialize
      super
      @card_type = "tools"

      @effect_value = 0
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

      @effect_value = 5
    end
  end
end