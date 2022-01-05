# frozen_string_literal: true

# A model representing the player of a game of Tic-Tac-Toe.
class Player
  def initialize(player, marker)
    puts "#{player}, what is your name?"
    @name = gets.chomp
    @marker = marker
    @current_turn = 1
    puts "Hello #{@name}! Your marker is #{@marker}."
  end
end
