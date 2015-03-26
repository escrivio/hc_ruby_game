module RubyGame

  class Monster < Sprite
    include Moveable

    attr_accessor :motion # Création d'un accessor (getter + setter) du nom de motion afin de fournir la lambda dans une variable d'instance et de rendre cette variable disponible

    def initialize(absciss,ordinate,image_name="ghost1.png")
      super
      @velocity = 1
    end

    def follow(player)
      @absciss += (player.absciss <=> @absciss) * @velocity
      @ordinate += (player.ordinate <=> @ordinate) * @velocity
    end

    def move_up
      @ordinate -= 1 * @velocity
    end
  end
end
