import 'dart:math';

class Game{ // camel case
  static const maxRandom = 100;
  int? _answer;
  int guessCount=0;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom)+1;
  }

  //กรณี guessCount เป็น private
  /*int getCount(){
    return _guessCount;
  }*/

  int doGuess(int num){
    guessCount++;
    if(num > _answer!){
      return 1;
    }else if(num < _answer!){
      return -1;
    }else{
      return 0;
    }
  }
}