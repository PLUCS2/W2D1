require_relative "Piece"

class EmptyPlaceError < StandardError; end

class Board 
 
  attr_accessor :rows 

  def initialize
    @rows = Array.new(8) {Array.new(8)}
    @sentinel = nil #NullPiece.instance  
    starting_board
  end 

  def [](pos)
    #[x,y] = pos 
    x = pos[0]
    y = pos[-1] 
    @rows[x][y]
  end 
  
  def []=(pos, value)
    x = pos[0]
    y = pos[-1] 
    @rows[x][y] = value 
  end 

  def move_piece(color, start_pos, end_pos)
    raise EmptyPlaceError if self[start_pos] == @sentinel || !start_pos.valid_pos?
    raise "error" if !end_pos.valid_pos?
    self[end_pos] = self[start_pos]
    self[start_pos] = @sentinel 
  end 

  def valid_pos?(pos)
    pos.between?(0,7)
  end

  def add_piece(piece, pos)
    self[pos] = piece
  end

  def checkmate?(color)

  end

  def in_check?(color)
  end

  def find_king(color)
    if color == :white 
     @rows.each do |row|
      row.each do |space|
        #if space == Piece
        #search for opposite color king
      end
    end
  else
    
    end
  
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