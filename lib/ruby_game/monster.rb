module RubyGame

  class Monster < Sprite
    include Habilities

    attr_accessor :motion, :player # Création d'accessors (getter + setter) du nom de motion et player
    def initialize(absciss,ordinate,image_name="ghost1.png")
      super
      @velocity = 1
    end

    def follow
      @absciss += (@player.absciss <=> @absciss) * @velocity
      @ordinate += (@player.ordinate <=> @ordinate) * @velocity
    end

    def move_up
      @ordinate -= 1 * @velocity
    end
  end
end
