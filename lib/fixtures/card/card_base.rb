module Fixtures::Card
    class Card_base
      def initialize
        @card_name = "noname"
        @card_number = 0
        @card_type = "normal"

        @image = nil
      end

      def update(number)

      end

      def image
        @image
      end
    end
  end