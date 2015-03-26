require_relative '../lib/ruby_game'

game = RubyGame::Game.new

game.start! do |g|
  g.ruby(rand(10..630), rand(10..470))
  g.player(rand(10..630), rand(10..470))
  g.monsters(number: 2, action: :follow) # Equivaut à notation g.monsters({:number => 5, :action => :follow})
  g.monsters(number: 2, action: :move_up) # Equivaut à notation g.monsters({:number => 2, :action => :move_up})
end
