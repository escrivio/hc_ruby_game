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

    # def move_left(velocity = @velocity)
    #   if @absciss > 0
    #     @absciss -= @velocity
    #   end
    # end

    # def move_right
    #   if @absciss < @instance.width
    #     @absciss += @velocity
    #   end
    # end

    # def move_up
    #   if @ordinate > 0
    #     @ordinate -= @velocity
    #   end
    # end

    # def move_down
    #   if @ordinate < @instance.height
    #     @ordinate += @velocity
    #   end
    # end

    # def touch?(ruby)
    #   @absciss == ruby.absciss and @ordinate == ruby.ordinate
    # end
  end
end
