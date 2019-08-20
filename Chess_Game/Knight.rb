require_relative "Piece"
require_relative "Stepable"


class King < Piece 
  include Stepable

  def initialize(color, board, pos)
    super
    @symbol = :N
  end

  def move_diffs 
    [[1, 2], [2, 1], [2, -1], [-1, 2], [-2, -1], [-1, -2], [-2, 1], [1, -2]]
  end 

end 