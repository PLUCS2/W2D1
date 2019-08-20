require_relative "Piece"
require_relative "Slideable"
require_relative "Board"

class Queen < Piece 
  include Slideable

  def initialize(color, board, pos)
    super
    @symbol = :Q
  end

  def move_dirs
    horizontal_dirs
    diagonal_dirs
  end 
end 