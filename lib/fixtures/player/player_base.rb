module Fixtures::Player
  class Player_base < Sprite
    include Fixtures::Card
    attr_accessor :card_slot,:card_num,:hp
    def initialize
      self.x = 0
      self.y = 0

      @@hp = 0
      @@mp = 0
      @@speed = 0
      @@job = "normal"#変数名を職業に変更
      @@card_num = 0
      @@card_slot = []
    end

    def update
      self.draw
      x = 0
      y = 0
      @@card_slot.each do |n|
        x += 40
        y += 50 if x%400 == 0
        n.display(x,y)
      end
    end

    def select_type(type)
      if type == 0
        @@hp = 30
        @@mp = 10
        @@speed = 30
        @@job = "hero"
        self.image = Image.load("lib/images/hero.png")
      elsif type == 1
        @@hp = 40
        @@mp = 0
        @@speed = 5
        @@job = "warrior"
        self.image = Image.load("lib/images/hero.png")
      elsif type == 2
        @@hp = 25
        @@mp = 20
        @@speed = 20
        @@job = "wizard"
        self.image = Image.load("lib/images/hero.png")
      elsif type == 3
        @@hp = 20
        @@mp = 25
        @@speed = 15
        @@job = "monk"
        self.image = Image.load("lib/images/hero.png")
      elsif type == 4
        @@hp = 25
        @@mp = 15
        @@speed = 50
        @@job = "bandit"
        self.image = Image.load("lib/images/hero.png")
      elsif type == 5
        @@hp ,@@mp,@@speed,@@job= 30,5,40,"fighter"
        self.image = Image.load("lib/images/hero.png")
      end
    end

    def draw_card
      max = [30,30,30]#各種類のカードの種類数
      card_number = rand(3) * 100
      card_number += rand(max[card_number/100])
      @@card_slot << Card_index.new(card_number)
      @@card_num += 1
    end

    def display
      self.draw
      x = 0
      y = 0
      @@card_slot.each do |n|
        x += 40
        y += 50 if x%400 == 0
        n.display(x,y)
      end
    end

=begin
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
=end
  end
end
