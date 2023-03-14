module Fixtures::Card
   class Card_weapons < Card_base
     attr_reader :attack_value,:attack_type,:card_type
      def initialize
        super
        @card_type = "attack"

        @attack_type = "normal"
        @attack_value = 0
        @tmp = Image.load("lib/images/hero.png")
      end

     def index(number)
       case number
       when 0
         fire_whip
       when 1
         fire_sword
       when 2
         fire_longsword
       when 3
         water_whip
       when 4
         water_sword
       when 5
         water_longsword
       when 6
         grass_whip
       when 7
         grass_sword
       when 8
         grass_longsword
       when 9
         stone_sword
       when 10
         stone_longsword
       when 11
         copper_sword
       when 12
         copper_longsword
       when 13
         iron_sword
       when 14
         iron_longsword
       end
     end

     def fire_whip
       @image = Image.load("lib/images/hero.png")
       @card_name = "fire whip"

       @defense_value = 2
       @defense_type = "fire"
     end

     def fire_sword
       @image = Image.load("lib/images/hero.png")
       @card_name = "fire sword"

       @defense_value = 5
       @defense_type = "fire"

     end

     def fire_longsword
       @image = @tmp
       @card_name = "fire longsword"

       @defense_value = 7
       @defense_type = "fire"
     end

     def water_whip
       @image = Image.load("lib/images/hero.png")
       @card_name = "water whip"

       @defense_value = 2
       @defense_type = "water"
     end

     def water_sword
       @image = Image.load("lib/images/hero.png")
       @card_name = "water sword"

       @defense_value = 5
       @defense_type = "water"
     end

     def water_longsword
       @image = Image.load("lib/images/hero.png")
       @card_name = "water longsword"

       @defense_value = 7
       @defense_type = "water"
     end

     def grass_whip
       @image = Image.load("lib/images/hero.png")
       @card_name = "grass whip"

       @defense_value = 2
       @defense_type = "grass"
     end

     def grass_sword
       @image = Image.load("lib/images/hero.png")
       @card_name = "grass sword"

       @defense_value = 5
       @defense_type = "grass"
     end

     def grass_longsword
       @image = Image.load("lib/images/hero.png")
       @card_name = "grass longsword"

       @defense_value = 7
       @defense_type = "grass"
     end

     def stone_sword
       @image = Image.load("lib/images/hero.png")
       @card_name = "stone sword"

       @defense_value = 3
       @defense_type = "normal"
     end

     def copper_sword
       @image = Image.load("lib/images/hero.png")
       @card_name = "copper whip"

       @defense_value = 4
       @defense_type = "normal"
     end

     def iron_sword
       @image = Image.load("lib/images/hero.png")
       @card_name = "iron whip"

       @defense_value = 5
       @defense_type = "normal"
     end

     def stone_longsword
       @image = Image.load("lib/images/hero.png")
       @card_name = "stone longsword"

       @defense_value = 6
       @defense_type = "normal"
     end

     def copper_longsword
       @image = Image.load("lib/images/hero.png")
       @card_name = "copper longsword"

       @defense_value = 7
       @defense_type = "normal"
     end

     def iron_longsword
       @image = Image.load("lib/images/hero.png")
       @card_name = "iron longsword"

       @defense_value = 8
       @defense_type = "normal"
     end
   end
end