module Fixtures::Player
  class Player_defense < Player_base
    def initialize
      @defense_type = "normal"
      @defense_value = 0
    end

    def update
      super
      @@card_slot.each do |n|
        if n === @mouse
          if n.type == "weapons"
            @defense_value = n.defense_value
            @defense_type = n.defense_type
          end
        end
      end
    end

    def damage(damage)
      @@hp -= damage
    end

    def defense_value
      @defense_value
    end

    def defense_type
      @defense_type
    end
  end
end