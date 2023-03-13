module Scene
  class Scene_base
    attr_reader :game_mode
    include Fixtures::Mouse

    def initialize
      @mouse = Mouse.new
      @check = false
      @next_scene = nil

      @back_image= Image.load("lib/images/base.jpg")
      @game_mode = "base"
    end

    def update
      Window.draw(0,0,@back_image)
      @mouse.update
    end

    def next_scene
      @next_scene
    end

    def finish?
      return @check
    end
  end
end