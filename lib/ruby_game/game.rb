module RubyGame
  class Game < Gosu::Window
    def initialize
      super(640, 480, false)
      @background_image = Gosu::Image.new(self, File.join(IMAGES_PATH, 'background.png'),true)
      @font = Gosu::Font.new(self, Gosu::default_font_name, 60)
    end

    def draw
      @background_image.draw(0, 0, 0)
      ([@player, @ruby] + @monsters).each {|object| object.draw}
      @font.draw("You won!", 200, 240, 2, 1.0, 1.0, 0xffffff00) if @state == :win
      @font.draw("You lose!", 200, 240, 2, 1.0, 1.0, 0xffff0000) if @state == :lost
    end

    def update
      if @state == :run

        @player.move_left if button_down?(Gosu::Button::KbLeft)
        @player.move_right if button_down?(Gosu::Button::KbRight)
        @player.move_up if button_down?(Gosu::Button::KbUp)
        @player.move_down if button_down?(Gosu::Button::KbDown)

        @monsters.each do |monster|
          monster.follow(@player)
          @state = :lost if monster.touch?(@player)
        end

        @state = :win if @player.touch?(@ruby)
      end
    end

    def start!(&block)                # Je déclare un block to proc
      @state = :run                   # Etat running
      if block_given?                 # Teste si la méthode start! est passé avec un block (do |g|)
        @game_state = block           # On sauvegarde l'état du jeu dans une variable d'instance pour la réemployer
      end
      @game_state.call(self)          # On remplace le yield(self) par un call sur un pointeur
      self.show if block_given?       # Sur Windows, la méthode show appelée plusieurs fois ne fonctionne pas correctement
    end

    def restart!
      start!
    end

    def close!
      exit()
    end

    def button_down(id)
      self.close! if id == Gosu::Button::KbEscape
      self.restart! if id == Gosu::Button::KbR
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
      monster = RubyGame::Monster.new(absciss,ordinate)
      monster.init_image(self)
      monster
    end

    def monsters(nombre)
      @monsters = []
      nombre.times {
        @monsters << self.monster(rand(10..630),rand(10..470))
      }
    end
  end
end
