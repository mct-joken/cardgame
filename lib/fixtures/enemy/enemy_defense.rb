module Fixtures::Enemy
  class Enemy_defense < Enemy_base
    def initialize
      super
      @defense_type = "normal"
      @defense_value = 0
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