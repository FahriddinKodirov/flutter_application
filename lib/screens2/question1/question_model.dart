import 'package:flutter_application_1/screens2/question1/option_model.dart';

class QuestionModel{
  String question;
  OptionModel option1;
  OptionModel option2;
  OptionModel option3;
  OptionModel option4;
  int trueAnswor;

  QuestionModel({required this.question,
             required this.option1,
             required this.option2,
             required this.option3,
             required this.option4,
             this.trueAnswor = 1});

 static final questions = [
  QuestionModel(
    question: "10 * 10 + 10?",
    option1: OptionModel(title: "110"),
    option2: OptionModel(title: "100"),
    option3: OptionModel(title: "101"),
    option4: OptionModel(title: "111"),
    trueAnswor: 1,
  ),
  QuestionModel(
    question: "5 / 5 + 10 = ?",
    option1: OptionModel(title: "3"),
    option2: OptionModel(title: "10"),
    option3: OptionModel(title: "15"),
    option4: OptionModel(title: "5"),
    trueAnswor: 2,
),
  QuestionModel(
    question: "5 + 5 - 10 = ?",
    option1: OptionModel(title: "10"),
    option2: OptionModel(title: "5"),
    option3: OptionModel(title: "0"),
    option4: OptionModel(title: "15"),
    trueAnswor: 3,
  ),
  QuestionModel(
    question: "20 + 5 * 10 = ?",
    option1: OptionModel(title: "35"),
    option2: OptionModel(title: "250"),
    option3: OptionModel(title: "100"),
    option4: OptionModel(title: "70"),
    trueAnswor: 4,
    ),
  QuestionModel(
    question: "20 - 5 * 10 = ?",
    option1: OptionModel(title: "150"),
    option2: OptionModel(title: "50"),
    option3: OptionModel(title: "-50"),
    option4: OptionModel(title: "-3"),
    trueAnswor: 4,
    ),

 ];
}