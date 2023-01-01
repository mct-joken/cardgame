module Fixtures::Player
  class Player < Hero_base
    def initialize
      
    end

    def start_game
      select_type(rand(5))
      while @card_num == 7 do
        draw_card
      end
      self.draw
    end

    def update
      self.draw
    end

    def skill(skill_number)
      if self.type == "hero"
        if skill_number == 1
          @attack_damage = rand(1..6) + 2
        elsif skill_number == 2
          self.hp += 5
          self.mp -= 2
        end
      elsif self.type == "warrior"
        if skill_number == 1
          @attack_damage = rand(1..6) + 5
        elsif skill_number == 2
          self.hp -= @defense_damage
        end
      elsif self.type == "wizard"
        if skill_number == 1
          @attack = rand(1..6) + 5
        elsif skill_number == 2
          self.hp -= @defense_damage
        end
      elsif self.type == "monk"
        if skill_number == 0
          self.hp + 10
          self.mp -= 6
        elsif skill_number == 1
          if @mobs[0] != 0||@mobs[2] != 0
            @mobs[].hp += 7
          end
          self.mp -= 9
        end
      elsif self.type == "banbit"
        if skill_number == 0
          draw_card
        elsif skill_number == 1
          num = 0
          while num == 3
            self.cards << @enemy.cards[rand(@enemy.card_num)]
            num += 1
          end
        end
      elsif self.type == "fighter"
        if skill_number == 0
          @attack_damage = rand(1..6)
        elsif skill_number == 1
          @attack_damage = rand(1..6) + 2
        end
      end
    end
  end
end