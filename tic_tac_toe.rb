# frozen_string_literal: true

require_relative 'player'
require_relative 'board'

puts "Let's play a game of Tic-Tac-Toe!"
player1 = Player.new('Player 1', 'X')
player2 = Player.new('Player 2', 'O')

board = Board.new
board.display
