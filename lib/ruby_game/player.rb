module RubyGame

  class Player
    attr_accessor :instance, :absciss, :ordinate, :sprite

    def initialize(instance,absciss,ordinate)
      @absciss  = absciss
      @ordinate = ordinate
      @instance = instance
      @sprite   = Gosu::Image.new(@instance, File.join(IMAGES_PATH, 'player.png'),true)
    end

    def draw
      @sprite.draw(@absciss, @ordinate, 0)
    end
  end
end
