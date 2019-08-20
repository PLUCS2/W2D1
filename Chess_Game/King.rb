require_relative "Piece"
require_relative "Stepable"


class King < Piece 
  include Stepable

  def initialize(color, board, pos)
    super
    @symbol = :K
  end

  def move_diffs 
    [[1, 1], [-1,-1], [1, -1], [-1, 1], [1, 0], [0, 1], [-1, 0], [0, -1]]
  end 

end 