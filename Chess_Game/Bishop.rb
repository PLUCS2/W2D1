require_relative "Piece"
require_relative "Slideable"
require_relative "Board"

class Bishop < Piece 
  include Slideable

  def initialize(color, board, pos)
    super
    @symbol = :B
  end

  def move_dirs
    diagonal_dirs
  end 
end 