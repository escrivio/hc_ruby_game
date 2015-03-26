module RubyGame
  module Moveable
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

    def touch?(item)
      Math.hypot(item.absciss - @absciss, item.ordinate - @ordinate) <= 32
    end
  end
end
