require_relative "Piece"
class EmptyPlaceError < StandardError; end

class Board 
 
  attr_accessor :rows 

  def initialize
    @rows = Array.new(8) {Array.new(8)}
    @sentinel = nil #NullPiece.instance  
    starting_board
  end 

  def move_piece(start_pos, end_pos)
    raise EmptyPlaceError if @rows[start_pos[0]][start_pos[-1]] == @sentinel || start_pos.any? { |ele| ele < 0 || ele > 7}
    raise "error" if end_pos.any? {|ele| ele < 0 or ele > 7}
    @rows[start_pos[0]][start_pos[-1]],@rows[end_pos[0]][end_pos[-1]] = @rows[end_pos[0]][end_pos[-1]], @rows[start_pos[0]][start_pos[-1]]

  end 

  private 

  def starting_board
    @rows[0] = @rows[0].map {|el| el = Piece.new}
    @rows[1] = @rows[1].map {|el| el = Piece.new}
    @rows[2] = @rows[2].map {|el| el = @sentinel}
    @rows[3] = @rows[3].map {|el| el = @sentinel}
    @rows[4] = @rows[4].map {|el| el = @sentinel}
    @rows[5] = @rows[5].map {|el| el = @sentinel}
    @rows[6] = @rows[6].map {|el| el = Piece.new}
    @rows[7] = @rows[7].map {|el| el = Piece.new}
  end 

end 