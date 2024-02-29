// Make a two-player Rock-Paper-Scissors game against computer.

// Ask for player's input, compare them, print out a message to the winner.

import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

class RockPaperScissorsGame {
  callRPSGame() {
    print('Welcome to the game');
    while (true) {
      try {
        print('Enter your choice - "rock","paper" or "scissors "');
        String playerMoveValue = stdin.readLineSync()!.toLowerCase();
        if (playerMoveValue == 'quit') {
          print('Thanks for playing, Bye!');
        }

        Move playerMove = parseString(playerMoveValue);
        Move computerMove = generateComputerMove();

        print("Player Chose: $playerMove");
        print("Computer chose: ${moveString[computerMove.index]}");
        String result = determineWinner(playerMove, computerMove);
        print('reslut: $result');
      } catch (e) {
        print("Error: ${e.toString()}. Please try again.");
      }
    }
  }

  static const List<String> moveString = ['rock', 'paper', 'scissors'];

  Move parseString(String moveString) {
    switch (moveString) {
      case 'rock':
        return Move.rock;
      case 'paper':
        return Move.paper;
      case 'scissors':
        return Move.scissors;
      default:
        throw ArgumentError("Enter valid String");
    }
  }

  Move generateComputerMove() {
    Random random = Random();
    return Move.values[random.nextInt(Move.values.length)];
  }

  //Todo - Change the String to Enum
  String determineWinner(Move playerMove, Move computerMove) {
    if (playerMove == computerMove) {
      return "It's a tie";
    } else if ((playerMove == 'rock' && computerMove == 'scissors') ||
        (playerMove == 'paper' && computerMove == 'rock') ||
        (playerMove == 'scissors' && computerMove == 'paper')) {
      return 'Player wins!';
    } else {
      return 'Computer wins!';
    }
  }
}
