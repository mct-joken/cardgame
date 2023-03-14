module Scene
  class Defense < Scene_base
    include Fixtures::Player
    include Fixtures::Enemy
    def initialize
      super
      @game_mode = "defense"
      @back_image = Image.load("lib/images/difence.png")

      @player = Player_defense.new
      @enemy = Enemy_attack.new
      @damage = 0
    end

    def update
      super
      @player.display
      @enemy.draw
      @player.update
      @enemy.update

      if @enemy.attack_type == @player.defense_type
        @damage = (@enemy.attack_value - @player.defense_value)
      elsif @enemy.attack_type != @player.defense_type
        @damage = @enemy.attack_value
      else @enemy.attack_value <= @player.defense_value
        @damage = 0
      end

      @player.damage(@damage)

      if @player.hp == 0
        #Window.draw(100,100,Image.load("lib/fixtures/image/lose.png"))
        if Input.mouse_push?(M_LBUTTON)
          @next_scene = Scene::Home.new
          @check = true
        end
      end

      if @player.hp != 0
        @next_scene = Scene::Attack.new
        @check = true
      end
    end
  end
end