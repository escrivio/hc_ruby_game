module RubyGame
  class Sprite

    def initialize(absciss,ordinate,image_name)
      @absciss  = absciss
      @ordinate = ordinate
      @image_name = image_name
    end

    def draw
      @sprite.draw_rot(@absciss, @ordinate, 0, 0)
    end

    def init_image(window)
      @sprite = Gosu::Image.new(window, File.join(IMAGES_PATH, @image_name),true)
    end
  end
end
