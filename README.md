# Tic-Tac-Toe

[Project: Tic Tac Toe]: https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/tic-tac-toe
[The Odin Project]: https://www.theodinproject.com/
[Tic Tac Toe]: https://www.vikingcodeschool.com/professional-development-with-ruby/tic-tac-toe
[Viking Code School]: https://www.vikingcodeschool.com/
[Bloody font]: https://patorjk.com/software/taag/#p=display&f=Bloody&t=Type%20Something%20
[Text to ASCII Art Generator (TAAG)]: https://patorjk.com/software/taag/

## Goal

Create a command-line Tic-Tac-Toe game in an Object-Oriented style
using the Ruby programming language.

See [Project: Tic Tac Toe] from [The Odin Project].

## Pseudocode

It took me approximately a week to create an initial working version
of the game. Lots of `rm *.rb` entered into the console during that
time.

After creating that initial version, I decided to look for other
approaches to this type of project in the OOP style. I came across
[Tic Tac Toe] from [Viking Code School] and decided to start from
scratch using the design process they laid out.

Below is the pseudocode I produced for my project, along with the
classes responsible for these duties:

1. Set up the initial game. [Game]
  1. Create a board. [Board]
  2. Create two players. [Player]
  3. Set Player 1 as the first player. [Game]
2. Start a game loop. [Game]
  1. Display the board. [Board]
  2. Set the first player as the current player. [Game]
  3. Ask the current player to choose an unclaimed square. [Player]
  4. Validate the player's input. [Player]
  5. Validate the player's choice. [Board]
  6. Place the current player's marker on their chosen square. [Board]
  7. Add the current player's choice to their list of choices. [Player]
  8. If the current player's choice resulted in a win: [Board]
    1. Declare them the winner. [Game]
    2. Exit the loop. [Game]
  9. If the current player's choice filled the board: [Board]
    1. Declare a tie. [Game]
    2. Exit the loop. [Game]
  10. Restart the loop with the next player as the current player. [Game]
3. Ask if the players want to play again. [Game]
  1. If yes: [Game]
    1. Clear the players' choices. [Player]
    2. Reset the board. [Board]
    3. Switch the first player. [Game]
    4. Start a new game loop. [Game]
  2. If no, exit the program. [Game]

## Takeaways

I think this project marks my official entrance into the Desert of
Despair. I learned a ton while doing it, but the simplicity of the
end result (it's a friggin' Tic Tac Toe game) was in stark contrast
to the amount of conceptualization required to make it work. I've
got a newfound respect for the effort involved in modeling objects
in a way that reads well and works.

This project also made me realize that I don't yet understand how
to use enumerables in place of conditionals, how nested loops affect
one another, and how to implement the best-practices of OOP when
starting from a blank screen. I know I'll get there, but there is
so much left to learn.
