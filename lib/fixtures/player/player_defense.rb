module Fixtures::Player
  class Player_defense < Player_base
    def initialize
      super
    end

    def update
      super
      @card_slot.each do |n|
        if n === @mouse
          if n.card_type == "weapons"
            @defense_value = n.defense_value
            @defense_type = n.defense_type
          end
        end
      end
    end

    def defense_value
      @defense_value
    end

    def defense_type
      @defense_type
    end
  end
end