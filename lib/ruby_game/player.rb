module RubyGame

  class Player < Sprite
    def initialize (instance,absciss,ordinate,motif="player.png")
      super
      @velocity = 3
    end

    def move_left
      if @absciss > 0
        @absciss = @absciss- @velocity
      end
    end

    def move_right
      if @absciss < @instance.width
        @absciss = @absciss + @velocity
      end
    end

    def move_up
      if @ordinate > 0
        @ordinate = @ordinate - @velocity
      end
    end

    def move_down
      if @ordinate < @instance.height
        @ordinate = @ordinate + @velocity
      end
    end
  end
end
