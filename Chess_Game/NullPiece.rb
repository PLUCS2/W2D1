require_relative "Piece"
require 'singleton'
require_relative "Board"

class NullPiece < Piece

  include Singleton
  def initialize

  end

end