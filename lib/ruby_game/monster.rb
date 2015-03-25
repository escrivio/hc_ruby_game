module RubyGame

  class Monster < Sprite

    def initialize(absciss,ordinate,image_name="ghost1.png")
      super
      @velocity = 1
    end

    def follow(player)
      @absciss += (player.absciss <=> @absciss) * @velocity
      @ordinate += (player.ordinate <=> @ordinate) * @velocity
    end

    def touch?(player)
      @absciss == player.absciss and @ordinate == player.ordinate
    end

  end
end
