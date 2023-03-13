module Fixtures::Enemy
  class Enemy_defense < Enemy_base
    def initialize
      super
    end

    def update

    end

    def defense_value
      @defense_value
    end

    def defense_type
      @defense_type
    end
  end
end