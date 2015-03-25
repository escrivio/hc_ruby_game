require_relative '../lib/ruby_game'

player_coords = [rand(10..630), rand(10..470)]
ruby_coords = [rand(10..630), rand(10..470)]

game = RubyGame::Game.new

game.start! do |g|
  g.ruby(ruby_coords[0],ruby_coords[1])
  g.player(player_coords[0],player_coords[1])
end
