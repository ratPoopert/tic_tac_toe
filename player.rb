# frozen_string_literal: true

# Handles all functionality for Tic-Tac-Toe players.
class Player
  attr_reader :choice, :choices, :marker, :name

  def initialize(pseudoname, marker)
    @alias = pseudoname
    @marker = marker
    @choices = []
    player_name
  end

  def choose_square(board)
    input_choice
    board.claim_square(self)
    @choices.push(@choice.to_i)
  end

  def input_choice
    loop do
      puts choose_square_prompt
      @choice = gets.chomp
      exit if %w[q Q exit Exit EXIT x X].include?(@choice)
      return if input_valid?

      puts invalid_input_error
    end
  end

  def input_valid?
    @choice.match?(/[1-9]/m)
  end

  def player_name
    puts name_prompt
    @name = gets.chomp
  end

  def reset
    @choice = nil
    @choices = []
  end

  # Messages
  def choose_square_prompt
    "\n#{@name}, please enter the number (1-9) of an unclaimed square to claim it with your #{@marker}:"
  end

  def claimed_square_error
    "I'm sorry #{@name}, but square ##{@choice} has already been claimed. Please select a different square."
  end

  def invalid_input_error
    "\nI'm sorry #{@name}, but #{@choice} is not valid input."
  end

  def name_prompt
    "\n#{@alias}, what is your name?"
  end

  def victory_message
    "\nCongratulations, #{@name}! You won!\n"
  end
end
