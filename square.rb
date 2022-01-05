# frozen_string_literal: true

# A model of a square on a Tic-Tac-Toe board.
class Square
  attr_reader :value

  def initialize(number)
    @number = number
    @owner = nil
    @value = number
  end
end
