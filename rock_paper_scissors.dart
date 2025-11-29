/*
Build a command line tool that can play rock, paper and scissors.
When started, the program should show this prompt:

> rock, paper, or scissors? (r/p/s)

It should then read the user and use it as follows:

-If the user enters 'r', 'p', or 's', treat this as a valid move. 
- If the user enters 'q', quit the program. 
- If the user enters anything else, show 'Invalid input', and prompt again. 

After the user has entered a valid move, generate another move at random, then compare the two 
moves according to the rules of the game. 

For eg, if you played 'rock' and the program played 'paper', the o/p
should be:
>You played: rock
>AI played: paper
>You lose. 
Game should repeat until the user quits. 
*/

import 'dart:io';
import 'dart:math';

// Psedocode for RPS
// Choose AI/Computer to make a random move
// Get user input based on their choice
// Compare the player move with AI
// Generate result.
// Quit if the user enters q

enum Move { rock, paper, scissors }

void main() {
  final rnd = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissor? (r/p/s)');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = rnd.nextInt(3);
      final aiMove = Move.values[random];
      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print("You win");
      } else {
        print('You loose');
      }
      print("Your move: ${playerMove}");
      print("AI move: ${aiMove}");
    } else if (input == 'q') {
      break;
    } else {
      print("Invalid move");
    }
  }
}
