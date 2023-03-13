module Fixtures::Enemy
  class Enemy_setting < Enemy_base
    def initialize
      super
    end

    def update
      super
      select_type(rand(5))
      while @card_num == 7 do
        draw_card
      end
    end
  end
end