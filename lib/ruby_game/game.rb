module RubyGame
  class Game < Gosu::Window
    def initialize
      super(640, 480, false)
      @background_image = Gosu::Image.new(self, File.join(IMAGES_PATH, 'background.png'),true)
      @font = Gosu::Font.new(self, Gosu::default_font_name, 60)
    end

    def draw
      @background_image.draw(0, 0, 0)
      [@player, @ruby, @monster].each {|object| object.draw}
      @font.draw("You won!", 200, 240, 2, 1.0, 1.0, 0xffffff00) if @state == :win
      @font.draw("You lose!", 200, 240, 2, 1.0, 1.0, 0xffffff00) if @state == :lost
    end

    def update
      if @state == :run
        @player.move_left if button_down?(Gosu::Button::KbLeft)
        @player.move_right if button_down?(Gosu::Button::KbRight)
        @player.move_up if button_down?(Gosu::Button::KbUp)
        @player.move_down if button_down?(Gosu::Button::KbDown)
        @monster.follow(@player)
        @state = :win if @player.touch?(@ruby)
        @state = :lost if @monster.touch?(@player)
      end
    end

    def start!
      @state = :run
      yield(self)
      self.show
    end

    def ruby(absciss, ordinate)
      @ruby = RubyGame::Ruby.new(absciss,ordinate)
      @ruby.init_image(self)
    end

    def player(absciss,ordinate)
      @player = RubyGame::Player.new(absciss,ordinate)
      @player.init_image(self)
    end

    def monster(absciss,ordinate)
      @monster = RubyGame::Monster.new(absciss,ordinate)
      @monster.init_image(self)
    end
  end
end
