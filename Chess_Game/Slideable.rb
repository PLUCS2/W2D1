

module Slideable 

  HORIZONTAL_DIRS = [[+1, 0], [0, +1], [-1, 0], [0, -1]]
  DIAGONAL_DIRS = [[+1, +1], [-1,-1], [+1, -1], [-1, +1]]

  def horizontal_dirs
    HORIZONTAL_DIRS 
  end 

  def diagonal_dirs 
    DIAGONAL_DIRS
  end 

  def moves 
    possble_movs = []
    move_dirs.each do |sub_arr|
      possble_movs += grow_unblocked_moves_in_dir(sub_arr)
    end
    possble_movs
  end 

  private 

  def grow_unblocked_moves_in_dir(dx, dy) 
    ans = []
    current_position = @pos
    current_position[0] += dx
    current_position[1] += dy
    # need to add logic for if position is filled with enemy piece 
    until board[current_position] != @sentinel # && board[current_position] != self # needs to know when to exit loop (current_position[0] < 0 || current_position[0] > 7) || (current_position[1] < 0 || current_position[1] > 7) || 
       ans << current_position 
      current_position[0] += dx
      current_position[1] += dy
    end
    if board[current_position].color != self.color
      ans << current_position
    end 
    ans
  end

 def move_dirs
  raise "You didn't provide a move direction"
  #move dirs here should raise error meaning piece move dirs didn't override
 end


end 