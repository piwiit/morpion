class Show
  def show_board(_arr_of_box)
    # TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    puts " #{@arr_of_box[0].str} | #{@arr_of_box[1].str} | #{@arr_of_box[2].str} || 1 | 2 | 3"
    puts '-' * 18
    puts " #{@arr_of_box[3].str} | #{@arr_of_box[4].str} | #{@arr_of_box[5].str} || 4 | 5 | 6 "
    puts '-' * 18
    puts " #{@arr_of_box[6].str} | #{@arr_of_box[7].str} | #{@arr_of_box[8].str} || 7 | 8 | 9"
  end
end
