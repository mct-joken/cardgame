module Scene
  class Title < Scene_base
    def initialize
      super
      @game_mode = "title"
      @back_image = Image.load("lib/images/title.jpg")
    end

    def update
      super
      if Input.mouse_push?(M_LBUTTON)
        @check = true
        @next_scene = Scene::Home.new
      end
    end
  end
end