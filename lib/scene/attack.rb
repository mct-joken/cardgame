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
      @player.draw
      @player.card_slot.each do |n|
        x += 40
        y += 50 if x%400 == 0
        n.display(x,y)
      end
      @enemy.draw
      @player.update
      @enemy.update

      @damage = @player.attack_value - @enemy.defense_value if @player.attack_type == @enemy.defense_type
      @damage = @player.attack_value if @player.attack_type != @enemy.defense_type
      @damage = 0 if  @player.attack_value <= @enemy.defense_value
      @enemy.hp -= @damage

      @next_scene = Scene::Defense.new if @enemy.hp != 0

      if @enemy.hp <= 0
        Window.draw(100,100,Image.load("lib/fixtures/image/win.png"))
        if Input.mouse_push?(M_LBUTTON)
          @check = true
          @next_scene = Scene::Home.new
        end
      end

      @check = true
    end
  end
end