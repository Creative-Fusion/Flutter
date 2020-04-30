//abstraction: Modularizing

import 'question.dart';

class QuizBrain {
  //useful for different type of quiz

  int _questionNumber = 0;

  List<Question> _questions = [
    //encapsulation _makes the property private
    Question('Shreya is patali', false),
    Question('Nista is a disciplined girl', false),
    Question('Dipesh is a legend', true),
    Question('SP sir the best professor in the world', false),
    Question('Sagar is funny', true),
    Question('Dipesh will die single', false),
    Question('Sagar\'s chrush is Shrikhala', true),
    Question('Nista always fight with Sagar', true),
  ];

  String getQuestion() {
    return _questions[_questionNumber].question;
  }

  bool getAnswer() {
    return _questions[_questionNumber].answer;
  }

  bool isFinished(){
    if(_questionNumber==_questions.length-1){
      print("Completed");
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    if(isFinished()==true) {
      _questionNumber=0;
    }
  }
  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }
  

}
