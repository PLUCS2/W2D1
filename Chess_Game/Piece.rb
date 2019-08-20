
class Piece 
  attr_reader :color, :board, :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s

  end 

  def empty?
    self == @sentinel 
  end

  def valid_moves
    moves #this references a slidable/stepable 
  end

  def pos=(val)
    @pos = val
  end

  def symbol 
    @symbol # attr_reader for piece specific instance variable
  end

  private

  def move_into_check?(end_pos)

  end

end 