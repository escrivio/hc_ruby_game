module RubyGame

  class Player < Sprite
    def initialize (instance,absciss,ordinate,motif="player.png")
      super
    end

    def move_left
      @absciss = @absciss- 3
    end

    def move_right
      @absciss = @absciss + 3
    end

    def move_up
      @ordinate = @ordinate - 3
    end

    def move_down
      @ordinate = @ordinate + 3
    end
  end
end
