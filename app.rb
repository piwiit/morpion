require 'bundler'

Bundler.require

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'board'
require 'boardcase'
require 'game'
require 'player'
require 'show'

puts '                                    d8b                 '
puts
puts '                                    Y8P                 '
puts '88888b.d88b.  .d88b. 888d88888888b. 888 .d88b. 88888b.  '
puts '888 "888 "88bd88""88b888P"  888 "88b888d88""88b888 "88b '
puts '888  888  888888  888888    888  888888888  888888  888 '
puts '888  888  888Y88..88P888    888 d88P888Y88..88P888  888 '
puts '888  888  888 "Y88P" 888    88888P" 888 "Y88P" 888  888 '
puts '                            888                         '
puts '                            888                         '
puts '                            888                         '

# class Application
#   def perform
#     # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
#     #
#   end
# end
# Application.new.perform
game = Game.new

tour = 0

while tour < 9
  game.turn
  game.switch_player
  tour += 1
end
