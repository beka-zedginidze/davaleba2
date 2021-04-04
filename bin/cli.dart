import 'dart:io';
import 'dart:math';

void main() {

  print("Welcome to Dice Game\nType 'exit' to stop the game");
  final random = Random();

  List<int> dice = [1, 2, 3, 4, 5, 6];

  int user = 0;
  int comp = 0;
  int attempt = 0;
  int total = 0;
  int totalComp = 0;

  while(true) {

    attempt += 1;
    stdout.write("You can roll the dice twice, If you are ready, type rolling: ");
    String userAttempt = stdin.readLineSync().toLowerCase();

    if (userAttempt == "exit") {
      print("Bye Bye!");
      break;
    }
    int compChoice = dice[random.nextInt(dice.length)];
    int userChoice = dice[random.nextInt(dice.length)];

    if (userAttempt == "rolling" && attempt <= 2) {
      totalComp += compChoice;
      print("computer total score is: $totalComp");
      total += userChoice;
      print("user total score: $total");

      if(totalComp > total) {
        print("computer wins");
      } else if(totalComp < total) {
        print("you win");
      } else {
        print("We have a tie");
      }      continue;
    } else {
      print("finish");
      break;
    }
  }
}