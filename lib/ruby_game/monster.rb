module RubyGame

  class Monster < Sprite
    include Habilities

    attr_accessor :motion, :target # Création d'accessors (getter + setter) du nom de motion et target

    def initialize(absciss,ordinate,image_name="ghost1.png")
      super
      @velocity = 1
    end

    def follow
      @absciss += (@target.absciss <=> @absciss) * @velocity
      @ordinate += (@target.ordinate <=> @ordinate) * @velocity
    end

    def move_up
      @ordinate -= 1 * @velocity
    end
  end
end
