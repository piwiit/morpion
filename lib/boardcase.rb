class BoardCase
  # TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :id, :str
  def initialize(id)
    @str = '   '
    @id = id
  end
  # TO DO : doit régler sa valeur, ainsi que son numéro de case
end
