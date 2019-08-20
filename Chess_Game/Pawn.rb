require_relative "Piece"
require_relative "Board"

class Pawn < Piece 

  def initialize(color, board, pos)
    super 
    @symbol = :p 
  end 

  def move_dirs 
    possible_moves = []
    possible_moves += side_attacks
    possible_moves += forward_steps
    possible_moves.select {|ele| valid_pos?(ele)}
  end 

  private 
  
  def at_start_row? 
    return true if @pos[0] == 6 || @pos[0] == 1
    false 
  end 

  def forward_dir
    if :white 
      return [1, 0]
    else
      return [-1, 0]
    end
  end 

  def forward_steps
    current_pos = @pos 
    current_pos[0] += forward_dir[0]
    current_pos[1] += forward_dir[1]
    current_pos
  end 

  def side_attacks
    current_pos = @pos
    ans = []
    if @color == :white 
      if board[current_pos[0] + 1, current_pos[1] + 1].color == :black
        ans << [current_pos[0] + 1, current_pos[1] + 1]
      elsif board[current_pos[0] + 1, current_pos[1] - 1].color == :black
        ans << [current_pos[0] + 1, current_pos[1] - 1]
      end 
    else @color == :black
      if board[current_pos[0] - 1, current_pos[1] - 1].color == :white
        ans << [current_pos[0] - 1, current_pos[1] - 1]
      elsif board[current_pos[0] - 1, current_pos[1] - 1].color == :white
        ans << [current_pos[0] - 1, current_pos[1] - 1]
      end 
    end
    ans 
  end 
  
end 