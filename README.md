# Tic-Tac-Toe - README

## Goal

[Using Ruby] build a tic-tac-toe game on the command line where two human players can play against each other, and the board is displayed in between turns.  

## Flow

### Pre-Game

1. Greet the users.
2. Ask for Player 1's name.
3. Ask for Player 2's name.

### Player Turns

1. Display a 3 x 3 grid of numbered squares. E.g.:

      1 | 2 | 3 
    -------------
      4 | 5 | 6 
    -------------
      7 | 8 | 9 
    
2. Ask Player One to select a grid number to place their marker (X).
3. Display the grid, replacing the number of the square that Player 1 selected with their marker. E.g.:

      1 | 2 | 3 
    -------------
      4 | X | 6 
    -------------
      7 | 8 | 9 

4. Repeat Steps 2 & 3 for Player 2 (marker O).
5. Continue this process until one of the players claims three squares in a row (horizontal, diagonal, or vertical) or until all available squares have been chosen. If the former, declare the winner; if the latter, declare a tie.
6. Ask the players if they would like to play again.
  * If yes, reset the board and start a new game.
  * If no, exit the game.

## Pseudocode

### Games
  * Have:
    * Rules
    * Players
      * Player 1
      * Player 2
    * Turns
    * A board
    * A winner
    * A loser
  * Can:
    * Ask for player name
    * Check for a winner
    * Declare winner
    * Declare loser
    * Declare a tie
    * Clear board
    * Declare a move as invalid (case square.owner)
    * Move to the next turn

### Players
  * Each has:
    * A :name (string) which will be collected at the start of the game and saved until the program exits.
    * A :marker ('X' for Player 1, 'O' for Player 2)
    * A :current_turn (integer), which will be incremented after the player places their marker.
  * Each can:
    * Place their marker on an unclaimed square during their turn.
    * Forfeit the current game during their turn.

### Boards
  * Have:
    * Squares

### Squares
  * Each has: 
    * An owner


