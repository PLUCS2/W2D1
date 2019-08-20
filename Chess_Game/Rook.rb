require_relative "Piece"
require_relative "Slideable"

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