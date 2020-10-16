class Game
  attr_accessor :current_player, :status, :board, :array_players
  # TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    puts 'Nom du joureur 1 :'
    print '> '
    joueur1 = Player.new(gets.chomp, ' X ')
    puts 'Nom du joueur 2 :'
    print '> '
    joueur2 = Player.new(gets.chomp, ' O ')

    @board = Board.new
    @array_players = [joueur1, joueur2]
    @current_player = @array_players[0]
    board.show
    # TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn
    board.play_turn(current_player.name, current_player.value)
    board.show

    # TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def switch_player
    @current_player = if @current_player == @array_players[0]
                        @array_players[1]
                      else
                        @array_players[0]
                      end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end
end
