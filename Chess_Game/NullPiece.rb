require_relative "Piece"
require 'singleton'
require_relative "Board"

class NullPiece < Piece
  include Singleton

  attr_reader :symbol 

  def initialize
    @color = :none
    @symbol = :o 
  end

  def moves 
    []
  end 

end

#WHAT does Moves do? What is the Null Symbol? And what goes in Null Initialize? 