import 'dart:math';
class Myclass {
  Myclass(){
    var g = Game();
    g.answer = 10;

  }
}

class  Game {
  int answer = 30;
  int count = 0;
  game({int maxRandom = 100}) {
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
    print('คำตอบ $answer');
  }
    int doGuess(int num) {

      if (num > answer) {
        print('║ ➜ $num is TOO HIGH! ▲');
        print('║══════════════════════════════════════════');
        count++;
        return 0;

      } else if (num < answer) {
        print('║ ➜ $num is TOO Low! ▼');
        print('║══════════════════════════════════════════');
        count++;
        return 0;

      } else {
        print('║➜ $num is correct! ❤');
        return 1;

      }
    }
  }


