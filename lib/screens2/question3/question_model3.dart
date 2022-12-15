import 'package:flutter_application_1/screens2/question1/option_model.dart';

class QuestionModel3{
  String question3;
  OptionModel option1;
  OptionModel option2;
  OptionModel option3;
  OptionModel option4;
  int trueAnswor;

  QuestionModel3({required this.question3,
             required this.option1,
             required this.option2,
             required this.option3,
             required this.option4,
             this.trueAnswor = 1});

 static final questions = [
  QuestionModel3(
    question3: "XI?",
    option1: OptionModel(title: "11"),
    option2: OptionModel(title: "10"),
    option3: OptionModel(title: "9"),
    option4: OptionModel(title: "8"),
    trueAnswor: 1,
  ),
  QuestionModel3(
    question3: "IX?",
    option1: OptionModel(title: "11"),
    option2: OptionModel(title: "9"),
    option3: OptionModel(title: "10"),
    option4: OptionModel(title: "12"),
    trueAnswor: 2,
),
  QuestionModel3(
    question3: "V?",
    option1: OptionModel(title: "10"),
    option2: OptionModel(title: "0"),
    option3: OptionModel(title: "5"),
    option4: OptionModel(title: "15"),
    trueAnswor: 3,
  ),
  QuestionModel3(
    question3: "XV?",
    option1: OptionModel(title: "11"),
    option2: OptionModel(title: "20"),
    option3: OptionModel(title: "25"),
    option4: OptionModel(title: "15"),
    trueAnswor: 4,
    ),
  QuestionModel3(
    question3: "IV?",
    option1: OptionModel(title: "3"),
    option2: OptionModel(title: "2"),
    option3: OptionModel(title: "5"),
    option4: OptionModel(title: "4"),
    trueAnswor: 4,
    ),

 ];
}