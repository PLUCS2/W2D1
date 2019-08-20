require_relative "Piece"
require_relative "All_Pieces"

class EmptyPlaceError < StandardError; end

class Board 
 
  attr_accessor :rows 

  def initialize
    @sentinel = NullPiece.instance 
    @rows = Array.new(8) {Array.new(8, @sentinel)}
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

    # @rows[2] = @rows[2].each_with_index {|ele, idx| ele = @sentinel}
    # @rows[3] = @rows[3].each_with_index {|ele, idx| ele = @sentinel}
    # @rows[4] = @rows[4].each_with_index {|ele, idx| ele = @sentinel}
    # @rows[5] = @rows[5].each_with_index {|ele, idx| ele = @sentinel}
    @rows[1] = @rows[1].each_with_index {|ele, idx| ele = Pawn.new(:white, self, [1, idx])}
    @rows[6] = @rows[6].each_with_index {|ele, idx| ele = Pawn.new(:black, self, [6, idx])}
    self[0, 3] = Queen.new(:white, self, [0,3])
    self[7, 4] = Queen.new(:black, self, [7,4])
    self[0, 4] = King.new(:white, self, [0,4])
    self[7, 3] = King.new(:black, self, [7,3])
    self[0, 2] = Bishop.new(:white, self, [0,2])
    self[0, 5] = Bishop.new(:white, self, [0,5])
    self[7, 2] = Bishop.new(:black, self, [7,2])
    self[7, 5] = Bishop.new(:black, self, [7,5])
    self[0, 1] = Knight.new(:white, self, [0,1])
    self[0, 6] = Knight.new(:white, self, [0,6])
    self[7, 1] = Knight.new(:black, self, [7,1])
    self[7, 6] = Knight.new(:black, self, [7,6])
    self[0, 0] = Rook.new(:white, self, [0,0])
    self[0, 7] = Rook.new(:white, self, [0,7])
    self[7, 0] = Rook.new(:black, self, [7,0])
    self[7, 7] = Rook.new(:black, self, [7,7])
  end 

end 