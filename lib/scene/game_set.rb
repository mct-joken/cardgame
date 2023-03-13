module Scene
  class Game_set < Scene_base
    include Fixtures::Player
    include Fixtures::Enemy
    def initialize
      super
      @game_mode = "set"
      @back_image = Image.load("lib/images/set.jpg")

      @player = Fixtures::Player::Player_setting.new
      @enemy = Fixtures::Enemy::Enemy_setting.new
    end

    def update
      super
      @player.update
      @enemy.update
      rand_num = rand(2)
      @next_scene = Scene::Attack.new if rand_num == 0
      @next_scene = Scene::Defense.new if rand_num == 1
      @check = true
    end
  end
end