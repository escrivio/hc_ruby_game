module RubyGame

  class Player
    attr_accessor :absciss, :ordinate, :motif

    def initialize(instance,absciss,ordinate)
      @absciss = absciss
      @ordinate = ordinate
      @instance = instance
      @motif = Gosu::Image.new(@instance, File.join(IMAGES_PATH, 'player.png'),true)
    end

    def draw
      @motif.draw(@absciss, @ordinate, 0)
    end
  end
end
