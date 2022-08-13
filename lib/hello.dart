import 'dart:io';
import 'Homework1.dart';

void main() {
  var game = Game();

  int result = 0;
  int count = 0;
  do {

    stdout.write('║ Guess The number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == null) {
     // print('Please enter number onLy');

      continue;

    }
    result = game.doGuess(guess);
    count = count + 1;
    }
  while (result != 1);

  print('║➜ total guesses: $count');
  print('║══════════════════════════════════════════');
  print('║                The End                   ');
  print('║══════════════════════════════════════════');
}


