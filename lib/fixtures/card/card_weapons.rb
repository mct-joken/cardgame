module Fixtures::Card
   class Card_weapons< Card_base
     attr_reader :attack_value,:attack_type,:card_type
      def initialize
        super
        @card_type = "attack"

        @attack_type = "normal"
        @attack_value = 0
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

        @attack_value = 5
        @attack_type = "fire"
      end
   end
end