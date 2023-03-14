module Fixtures::Player
  class Player_attack < Player_base
    def initialize
      @attack_type = "normal"
      @attack_value = 0
    end

    def update
      super
      @@card_slot.each do |n|
        if n === @mouse
          if n.type == "attack"
            @attack_value = n.attack_value
            @attack_type = n.attack_type
          elsif n.type == "tools"
            n.update
          end
          break
        end
      end
    end

    def attack_value
      @attack_value
    end

    def attack_type
      @attack_type
    end
  end
end