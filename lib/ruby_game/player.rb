module RubyGame
  class Player < Sprite
    include Moveable
    def initialize (absciss,ordinate,image_name="player.png")
      super
      @velocity = 2
    end
  end
end
