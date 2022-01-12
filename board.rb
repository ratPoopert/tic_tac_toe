# frozen_string_literal: true

# A handles the behavior and state of a Tic-Tac-Toe board.
class Board
  WINNING_COMBINATIONS = [
    # Horizontal
    [1, 2, 3], [4, 5, 6], [7, 8, 9],
    # Vertical
    [1, 4, 7], [2, 5, 8], [3, 6, 9],
    # Diagonal
    [1, 5, 9], [3, 5, 7]
  ].freeze

  def initialize
    @squares = (1..9).to_a
  end

  def claim_square(player)
    validate_choice(player)
    update_marker(player.choice, player.marker)
  end

  def index(choice)
    choice.to_i - 1
  end

  def full?
    @squares.none? { |square| square.to_s.match?(/[1-9]/m) }
  end

  def reset
    initialize
  end

  def to_s
    <<-BOARD

         #{@squares[0]} | #{@squares[1]} | #{@squares[2]}
        ---|---|---
         #{@squares[3]} | #{@squares[4]} | #{@squares[5]}
        ---|---|---
         #{@squares[6]} | #{@squares[7]} | #{@squares[8]}

    BOARD
  end

  def update_marker(choice, marker)
    @squares[index(choice)] = marker
  end

  def square_claimed?(choice)
    !@squares[index(choice)].to_s.match?(choice)
  end

  def validate_choice(player)
    return unless square_claimed?(player.choice)

    puts player.claimed_square_error
    player.choose_square(self)
  end

  def winning_combination?(player)
    WINNING_COMBINATIONS.any? do |combination|
      combination.all? { |value| player.choices.include?(value) }
    end
  end
end
