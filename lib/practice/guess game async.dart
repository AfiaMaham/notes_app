import 'dart:io';
import 'dart:math';

void main() async {
  print("""
   Levels:-
      1- Easy
      2- Medium
      3- Hard
   """);
  stdout.write("Select your Level 'E' for easy,'M' for medium,'H' for hard: ");
  String level = stdin.readLineSync()!.toUpperCase();
  Random random = Random();
  int num = random.nextInt(100);
  if (level == 'E') {
    print("Guess the number I generated in 15 seconds: ");
    int sec = 15;
    await Future.delayed(Duration(seconds: sec));
    for (int i = 1; ; i++) {
      stdout.write("Enter number: ");
      int guessNum = int.parse(stdin.readLineSync()!);

      if (guessNum < num) {
        print("generated number is greater");
      }
      else if (guessNum > num) {
        print("generated number is less");
      }
      if (guessNum == num) {
        print(
            "you won");
        if (i <= 10) {
          print('Great job!');
        }
        if (i > 10 && i <= 15) {
          print('Not Bad');
        }
        if (i > 15) {
          print('Need more practice');
        }

        break;
      }
    }
  }
  // stdout.write("Guess the number I generated: ");
}
