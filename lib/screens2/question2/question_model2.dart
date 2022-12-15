import 'package:flutter_application_1/screens2/question1/option_model.dart';

class QuestionMOdel2{
  String question2;
  OptionModel option1;
  OptionModel option2;
  OptionModel option3;
  OptionModel option4;
  int trueAnswor;

  QuestionMOdel2({required this.question2,
             required this.option1,
             required this.option2,
             required this.option3,
             required this.option4,
             this.trueAnswor = 1});

 static final questions = [
  QuestionMOdel2(
    question2: "Work?",
    option1: OptionModel(title: "ish"),
    option2: OptionModel(title: "dam"),
    option3: OptionModel(title: "kitob"),
    option4: OptionModel(title: "ruchka"),
    trueAnswor: 1,
  ),
  QuestionMOdel2(
    question2: "play?",
    option1: OptionModel(title: "uhlamoq"),
    option2: OptionModel(title: "o'ynamoq"),
    option3: OptionModel(title: "yugurmoq"),
    option4: OptionModel(title: "gapirmoq"),
    trueAnswor: 2,
),
  QuestionMOdel2(
    question2: "big?",
    option1: OptionModel(title: "semiz"),
    option2: OptionModel(title: "oriq"),
    option3: OptionModel(title: "katta"),
    option4: OptionModel(title: "kichkina"),
    trueAnswor: 3,
  ),
  QuestionMOdel2(
    question2: "gun?",
    option1: OptionModel(title: "kepka"),
    option2: OptionModel(title: "sumga"),
    option3: OptionModel(title: "chaynak"),
    option4: OptionModel(title: "pistolet"),
    trueAnswor: 4,
    ),
  QuestionMOdel2(
    question2: "desk?",
    option1: OptionModel(title: "stol"),
    option2: OptionModel(title: "doska"),
    option3: OptionModel(title: "oyne"),
    option4: OptionModel(title: "parta"),
    trueAnswor: 4,
    ),

 ];
}