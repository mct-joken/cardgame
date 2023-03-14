module Fixtures::Card
  class Card_index < Sprite
    attr_reader :max,:type
    def initialize(number)
      self.x = 0
      self.y = 0

      @weapon_card = Card_weapons.new
      @armor_card = Card_armors.new
      @tool_card = Card_tools.new

      card_select(number)
    end

    def update(number)
      @tool_card.update(number)
    end

    def card_select(number)
      if number/100 == 0
        @weapon_card.index(number)
        @image = @weapon_card.image
        @type = @weapon_card.card_type
      elsif number/100 == 1
        @armor_card.index(number)
        @image = @armor_card.image
        @type = @armor_card.card_type
      elsif number/100 == 2
        @tool_card.index(number)
        @image = @tool_card.image
        @type = @tool_card.card_type
      else
        @weapon_card.index(1)
        @image = @weapon_card.image
      end
    end

    def display(x,y)
      self.x = x
      self.y = y
      self.image = @image
      self.draw
    end
  end
end