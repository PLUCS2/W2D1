

module Stepable

  def moves 
    possble_movs = []
    current_position = @pos
    move_diffs.each do |sub_arr|
      possble_movs << [current_position[0]+ sub_arr[0], current_position[1]+ sub_arr[1] ]
    end
    possble_movs
  end 

  private 

  def move_diffs
    raise "Knight/King move_diffs method not called"
  end 

end 