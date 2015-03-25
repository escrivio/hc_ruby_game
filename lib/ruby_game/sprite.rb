module RubyGame
  class Sprite

    attr_reader :absciss, :ordinate

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
      @instance = window
    end

    def touch?(item)
      Math.hypot(item.absciss - @absciss, item.ordinate - @ordinate) <= 32
    end

  end
end
