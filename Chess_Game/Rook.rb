require_relative "Piece"
require_relative "Slideable"
require_relative "Board"

class Rook < Piece
  include Slideable

  def initialize(color, board, pos)
    super
    @symbol = :R
  end

  def move_dirs
    horizontal_dirs 
  end 

end