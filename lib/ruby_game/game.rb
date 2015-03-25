module RubyGame
  class Game < Gosu::Window
    def initialize(player, ruby)
      super(640, 480, false)
      @background_image = Gosu::Image.new(self, File.join(IMAGES_PATH, 'background.png'),true)
      @font = Gosu::Font.new(self, Gosu::default_font_name, 60)
      ruby.init_image(self)
      player.init_image(self)
      @player= player
      @ruby = ruby
    end

    def draw
      @background_image.draw(0, 0, 0)
      [@player, @ruby].each {|object| object.draw}
      @font.draw("You won!", 200, 240, 2, 1.0, 1.0, 0xffffff00) if @state == :win
    end

    def update
      if @state == :run
        @player.move_left if button_down?(Gosu::Button::KbLeft)
        @player.move_right if button_down?(Gosu::Button::KbRight)
        @player.move_up if button_down?(Gosu::Button::KbUp)
        @player.move_down if button_down?(Gosu::Button::KbDown)
        @state = :win if @player.touch?(@ruby)
      end
    end

    def start!
      @state = :run
      self.show
    end
  end
end
