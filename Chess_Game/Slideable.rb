

module Slidable 

  HORIZONTAL_DIRS = [[+1, 0], [0, +1], [-1, 0], [0, -1]]
  DIAGONAL_DIRS = [[+1, +1], [-1,-1], [+1, -1], [-1, +1]]

  def horizontal_dirs
    HORIZONTAL_DIRS 
  end 

  def diagonal_dirs 
    DIAGONAL_DIRS
  end 

  def moves 
    move_dirs
    grow_unblo
  end 

  private 

  def grow_unblocked_moves_in_dir(dx, dy) 



end 