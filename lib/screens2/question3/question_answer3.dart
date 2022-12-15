import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens2/question1/options_widget.dart';
import 'package:flutter_application_1/screens2/question1/question_model.dart';
import 'package:flutter_application_1/screens2/question2/question_model2.dart';
import 'package:flutter_application_1/screens2/question3/question_model3.dart';

class AnswerWidget3 extends StatefulWidget {
  QuestionModel3 questionModel3;
  final ValueChanged<bool> onAnswerSelecteed;

  AnswerWidget3({super.key, required this.questionModel3,
                required this.onAnswerSelecteed,});

  @override
  State<AnswerWidget3> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget3> {


  @override
  Widget build(BuildContext context) {
    return Column(children: [
        OptionWidget(
          optino: widget.questionModel3.option1.title,
          isSelected: widget.questionModel3.option1.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel3.option1.isSelected =
                  !widget.questionModel3.option1.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel3.trueAnswor ==
                widget.questionModel3.option1.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel3.option2.title,
          isSelected: widget.questionModel3.option2.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel3.option2.isSelected =
                  !widget.questionModel3.option2.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel3.trueAnswor ==
                widget.questionModel3.option2.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel3.option3.title,
          isSelected: widget.questionModel3.option3.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel3.option3.isSelected =
                  !widget.questionModel3.option3.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel3.trueAnswor ==
                widget.questionModel3.option3.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel3.option4.title,
          isSelected: widget.questionModel3.option4.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel3.option4.isSelected =
                  !widget.questionModel3.option4.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel3.trueAnswor ==
                widget.questionModel3.option4.isSelected);
          },
        ),
    ],);
  }
}