# frozen_string_literal: true

require_relative 'square'

# A model of a Tic-Tac-Toe board.
class Board

  def initalize
    @square1 = Square.new(1)
    @square2 = Square.new(2)
    @square3 = Square.new(3)
    @square4 = Square.new(4)
    @square5 = Square.new(5)
    @square6 = Square.new(6)
    @square7 = Square.new(7)
    @square8 = Square.new(8)
    @square9 = Square.new(9)
  end

  def display
    puts " #{@square1.value} | #{@square2.value} | #{@square3.value}"
    puts '-----------'
    puts " #{@square4.value} | #{@square5.value} | #{@square6.value}"
    puts '-----------'
    puts " #{@square7.value} | #{@square8.value} | #{@square9.value}"
  end
end
