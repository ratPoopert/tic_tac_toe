# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

# Controls a game of Tic-Tac-Toe.
class Game
  def initialize
    system 'clear'
    puts title
    gets
    @board = Board.new
    @players = [
      @player1 = Player.new('Player 1', 'X'),
      @player2 = Player.new('Player 2', 'O')
    ]
    @first_player = @player1
  end

  def play
    @current_player = @first_player
    loop do
      system 'clear'
      puts @board
      @current_player.choose_square(@board)
      break if game_over?

      switch_current_player
    end
    end_game
  end

  def end_game
    system 'clear'
    result
    return unless play_again?

    @board.reset
    switch_first_player
    reset_players
    play
  end

  def game_over?
    winner? || @board.full?
  end

  def play_again?
    puts play_again_prompt
    choice = gets.chomp
    %w[Y y].include?(choice)
  end

  def play_again_prompt
    "\nEnter \"Y\" to play again. Enter any other key to quit.\n"
  end

  def reset_players
    @players.each(&:reset)
  end

  def result
    if winner?
      @winner = @current_player
      puts @winner.victory_message
    else
      puts tie_game_message
    end
  end

  def switch_current_player
    @current_player =
      if @current_player == @player1
        @player2
      else
        @player1
      end
  end

  def switch_first_player
    @first_player =
      if @first_player == @player1
        @player2
      else
        @player1
      end
  end

  def tie_game_message
    'This game ended in a tie!'
  end

  def title
    <<-TITLE






                          ▄▄▄█████▓ ██▓ ▄████▄     ▄▄▄█████▓ ▄▄▄       ▄████▄     ▄▄▄█████▓ ▒█████  ▓█████#{' '}
                          ▓  ██▒ ▓▒▓██▒▒██▀ ▀█     ▓  ██▒ ▓▒▒████▄    ▒██▀ ▀█     ▓  ██▒ ▓▒▒██▒  ██▒▓█   ▀#{' '}
                          ▒ ▓██░ ▒░▒██▒▒▓█    ▄    ▒ ▓██░ ▒░▒██  ▀█▄  ▒▓█    ▄    ▒ ▓██░ ▒░▒██░  ██▒▒███#{'   '}
                          ░ ▓██▓ ░ ░██░▒▓▓▄ ▄██▒   ░ ▓██▓ ░ ░██▄▄▄▄██ ▒▓▓▄ ▄██▒   ░ ▓██▓ ░ ▒██   ██░▒▓█  ▄#{' '}
                            ▒██▒ ░ ░██░▒ ▓███▀ ░     ▒██▒ ░  ▓█   ▓██▒▒ ▓███▀ ░     ▒██▒ ░ ░ ████▓▒░░▒████▒
                            ▒ ░░   ░▓  ░ ░▒ ▒  ░     ▒ ░░    ▒▒   ▓▒█░░ ░▒ ▒  ░     ▒ ░░   ░ ▒░▒░▒░ ░░ ▒░ ░
                              ░     ▒ ░  ░  ▒          ░      ▒   ▒▒ ░  ░  ▒          ░      ░ ▒ ▒░  ░ ░  ░
                            ░       ▒ ░░             ░        ░   ▒   ░             ░      ░ ░ ░ ▒     ░#{'   '}
                                    ░  ░ ░                        ░  ░░ ░                      ░ ░     ░  ░
                                       ░                              ░#{'                                    '}





                                            Press ENTER to begin the bloodshed
    TITLE
  end

  def winner?
    @board.winning_combination?(@current_player)
  end
end
