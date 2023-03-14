module Fixtures::Player

  class Player_setting < Player_base
    def initialize
      super
    end

    def update
      select_type(rand(5))
      while @@card_num != 7 do
        draw_card
      end
      super
      p @@card_slot.class
    end
  end
end