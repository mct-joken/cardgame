module Scene
  class Home < Scene_base
    def initialize
      super
      @game_mode = "home"
      @back_image = Image.load("lib/images/home.jpg")

      @button1 = Sprite.new(100, 100, Image.new(100, 100, C_BLUE))
      @button2 = Sprite.new(400, 100, Image.new(100, 100, C_RED))
    end

    def update
      super
      @button1.draw
      @button2.draw
      if Input.mouse_push?(M_LBUTTON)
        @check = true
        @next_scene = Scene::Game_set.new #if @button1 === @mouse
        #@next_scene = Scene::Title.new if @button2 === @mouse
      end
    end
  end
end