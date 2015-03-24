module RubyGame

  class Player < Sprite
    def initialize (instance,absciss,ordinate,motif="player.png")
      super
    end

    def move_left
      if @absciss > 0
        @absciss = @absciss- 3
      end
    end

    def move_right
      if @absciss < @instance.width
        @absciss = @absciss + 3
      end
    end

    def move_up
      if @ordinate > 0
        @ordinate = @ordinate - 3
      end
    end

    def move_down
      if @ordinate < @instance.height
        @ordinate = @ordinate + 3
      end
    end
  end
end
