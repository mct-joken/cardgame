module Fixtures::Player
  class Player_setting < Player_base
    def initialize
      super
    end

    def update
      select_type(rand(5))
      super

      while @card_num == 7 do
        draw_card
      end
    end
  end
end