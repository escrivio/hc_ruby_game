module RubyGame

  class Player < Sprite

    def initialize (absciss,ordinate,image_name="player.png")
      super
      @velocity = 2
    end

    def move_left (velocity = @velocity)
      if @absciss > 0
        @absciss -= @velocity
      end
    end

    def move_right
      if @absciss < @instance.width
        @absciss += @velocity
      end
    end

    def move_up
      if @ordinate > 0
        @ordinate -= @velocity
      end
    end

    def move_down
      if @ordinate < @instance.height
        @ordinate += @velocity
      end
    end

    def touch?(ruby)
      Math.hypot(ruby.absciss - @absciss, ruby.ordinate - @ordinate) <= 32
    end
  end
end
