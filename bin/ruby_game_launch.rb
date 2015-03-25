require_relative '../lib/ruby_game'

player_coords = [rand(10..630), rand(10..470)]
ruby_coords = [rand(10..630), rand(10..470)]

if player_coords != ruby_coords
  player = RubyGame::Player.new(player_coords[0],player_coords[1])
  ruby =  RubyGame::Ruby.new(ruby_coords[0],ruby_coords[1])
end

ap ruby
game=RubyGame::Game.new(player,ruby)
ap ruby
game.start!
