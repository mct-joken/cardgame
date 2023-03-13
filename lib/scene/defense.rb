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
    end

    def update
      super
      @player.draw
      @player.card_slot.each do |n|
        x += 40
        y += 50 if x%400 == 0
        n.display(x,y)
      end
      @enemy.draw
      @player.update
      @enemy.update

      @damage = @enemy.attack_value - @player.defense_value if @enemy.attack_type == @player.defense_type
      @damage = @enemy.attack_value if @enemy.attack_type != @player.defense_type
      @damage = 0 if @enemy.attack_value <= @player.defense_value
      @player.hp -= @damage

      @next_scene = Scene::Attack.new if @player.hp != 0

      if @player.hp == 0
        Window.draw(100,100,Image.load("lib/fixtures/image/lose.png"))
        if Input.mouse_push?(M_LBUTTON)
          @check = true
          @next_scene = Scene::Home.new
        end
      end

      @check = true
    end
  end
end