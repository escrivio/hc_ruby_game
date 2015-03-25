module RubyGame
  class Game < Gosu::Window
    def initialize(player, ruby)
      super(640, 480, false)
      @background_image = Gosu::Image.new(self, File.join(IMAGES_PATH, 'background.png'),true)
      ruby.init_image(self)
      player.init_image(self)
      @player= player
      @ruby = ruby
    end

    def draw
      @background_image.draw(0, 0, 0)
      [@player, @ruby].each {|object| object.draw}
    end

    def update
      @player.move_left if button_down?(Gosu::Button::KbLeft)
      @player.move_right if button_down?(Gosu::Button::KbRight)
      @player.move_up if button_down?(Gosu::Button::KbUp)
      @player.move_down if button_down?(Gosu::Button::KbDown)
    end

    def start!
      self.show
    end
  end
end
