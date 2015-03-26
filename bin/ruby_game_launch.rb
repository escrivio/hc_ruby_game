require_relative '../lib/ruby_game'

game = RubyGame::Game.new

game.start! do  # On tente de simplifier l'écriture pour virer le block et la syntaxe globale avec l'utilisation d'instance_eval dans game.start!
  puts self
  ruby rand(10..630), rand(10..470)     # On peut supprimer les parenthèses.
  player rand(10..630), rand(10..470)   # On peut supprimer les parenthèses.
  monsters number: 2, action: :follow   # On peut supprimer les parenthèses.
  monsters number: 2, action: :move_up  # On peut supprimer les parenthèses.
end
