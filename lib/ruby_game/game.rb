require 'gosu'

module RubyGame
  class Game < Gosu::Window
    def initialize
      super(640, 480, false)
    end

    def start!
      self.show
    end
  end
end

new_game=RubyGame::Game.new
new_game.start!
