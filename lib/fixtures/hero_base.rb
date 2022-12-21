module Fixture::setting
  class Hero_base < Sprite
    def initialize
      @hp = 0,@mp = 0,@speed = 0
      @job = "normal"#変数名を職業に変更
      @card_num = 0
      @cards = []

      @attack_damage = 0,@attack_type = 0
      @defense_damage = 0,@defense_type = 0
    end

    def select_type(type)
      if type == 0
        @hp = 30,@mp = 10,@speed = 30,@job = "hero"
        self.image = Image.load("images/")
      elsif type == 1
        @hp = 40,@mp = 0,@speed = 5,@job = "warrior"
        self.image = Image.load("images/")
      elsif type == 2
        @hp = 25,@mp = 20,@speed = 20,@job = "wizard"
        self.image = Image.load("images/")
      elsif type == 3
        @hp = 20,@mp = 25,@speed = 15,@job = "monk"
        self.image = Image.load("images/")
      elsif type == 4
        @hp = 25,@mp = 15,@speed = 50,@job = "bandit"
        self.image = Image.load("images/")
      elsif type == 5
        @hp = 30,@mp = 5,@speed = 40,@job = "fighter"
        self.image = Image.load("images/")
      end
    end

    def draw_card
      max = [30,30,30,30,30]#各種類のカードの種類数
      card_number = rand(4)*100
      card_number += rand(max[card_number/100])
      @cards << card_number
      @card_num += 1
    end
  end
end
