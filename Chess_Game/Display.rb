require_relative "Board"
require "colorize"
require_relative "cursor"

class Display

  def initialize(board) 
    @cursor = Cursor.new([0, 0], board)
    @board = board
    @selected = false
  end 

  def render
    system("clear")
    puts "  #{(0...size).to_a.join(' ')}"
    rows.each_with_index do |row, i|
      puts "#{i} #{row.join(' ')}
  end

  end

end 