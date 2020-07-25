import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;
   List<Question> _questionBank =[
     Question(questionText: 'slugs blood is green',answers: true),
     Question(questionText: 'you can lead a cow upstairs but not down stairs ',answers: false),
     Question(questionText: 'Approximately one quarter of human bones are in feet',answers: true),
     Question(questionText:'Some cats are actually allergic to humans',answers: true),
  
    
   
    Question(questionText:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',answers: true),
    Question(questionText:'It is illegal to pee in the Ocean in Portugal.', answers:true),
    Question(questionText:
        'No piece of square dry paper can be folded in half more than 7 times.',answers:
        false),
    Question(
       questionText: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answers:true),
    Question(
      questionText:  'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
      answers:  false),
    Question(
        questionText:'The total surface area of two human lungs is approximately 70 square metres.',
      answers:  true),
    Question(questionText:'Google was originally called \"Backrub\".',answers: true),
    Question(
     questionText: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
         answers: true),
    Question(
      questionText:  'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
     answers:   true),


   ];
   String getQuestionText()
   {
     return _questionBank[_questionNumber].questionText;
   }
bool getAnswer()
   {
     return _questionBank[_questionNumber].answers;
   }
   void moveToNextQuestion()
   {
     if(_questionNumber < _questionBank.length-1)
     _questionNumber++;
   }
  bool isFinished(){
    if(_questionNumber >= _questionBank.length-1 )
    {
      return true;
    }
    else
    {
      return false; 
    }
  }
  void reset()
  {
    _questionNumber=0;
  }
}