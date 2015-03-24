module RubyGame
  class Sprite
    #attr_accessor :instance, :absciss, :ordinate, :motif

    def initialize(instance,absciss,ordinate,motif)
      @absciss  = absciss
      @ordinate = ordinate
      @instance = instance
      @sprite   = Gosu::Image.new(@instance, File.join(IMAGES_PATH, motif),true)
    end

    def draw
      @sprite.draw(@absciss, @ordinate, 0)
    end
  end
end
