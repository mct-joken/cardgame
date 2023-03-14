module Scene
  class Attack < Scene_base
    include Fixtures::Player
    include Fixtures::Enemy
    def initialize
      super
      @game_mode = "attack"
      @back_image = Image.load("lib/images/attack.jpg")
      @player = Player_attack.new
      @enemy = Enemy_defense.new
      @damage = 0
    end

    def update
      super
      @player.display
      @enemy.draw

      if @player.attack_type == @enemy.defense_type
        @damage = (@player.attack_value - @enemy.defense_value)
      elsif @player.attack_type != @enemy.defense_type
        @damage = @player.attack_value
      else @player.attack_value < @enemy.defense_value || @player.attack_value == @enemy.defense_value
        @damage = 0
      end

      @enemy.damage(@damage)

      if @enemy.hp <= 0
        #Window.draw(100,100,Image.load("lib/fixtures/image/win.png"))
        if Input.mouse_push?(M_LBUTTON)
          @next_scene = Scene::Home.new
          @check = true
        end
      end

      if @enemy.hp != 0
        @next_scene = Scene::Defense.new
        @check = true
      end
    end
  end
end