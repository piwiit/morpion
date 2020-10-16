class Board
  attr_accessor :board
  # TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  # Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  def initialize
    @arr_of_box = []
    (1..9).each do |index|
      @arr_of_box << BoardCase.new(index)
    end
    # TO DO :
    # Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    # Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  end

  def show
    puts " #{@arr_of_box[0].str} | #{@arr_of_box[1].str} | #{@arr_of_box[2].str} || 1 | 2 | 3"
    puts '-' * 18
    puts " #{@arr_of_box[3].str} | #{@arr_of_box[4].str} | #{@arr_of_box[5].str} || 4 | 5 | 6 "
    puts '-' * 18
    puts " #{@arr_of_box[6].str} | #{@arr_of_box[7].str} | #{@arr_of_box[8].str} || 7 | 8 | 9"
  end

  def play_turn(player, value)
    puts
    puts "A toi de jouer #{player} , que veux tu faire ??"
    puts
    action = gets.chomp.to_i

    @arr_of_box[action - 1].str = value
    # TO DO : une méthode qui :
    # 1) demande au bon joueur ce qu'il souhaite faire
    # 2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    if @arr_of_box[action - 1].str == [1, 2, 3] || [4, 5, 6] || [7, 8, 9] || [1, 4, 7] || [2, 5, 8] || [3, 6, 9] || [1, 5, 9] || [3, 5, 7]
      puts ' GG !! '
    end
    puts ' looser'
  end
end
