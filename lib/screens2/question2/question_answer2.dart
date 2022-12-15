import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens2/question1/options_widget.dart';
import 'package:flutter_application_1/screens2/question1/question_model.dart';
import 'package:flutter_application_1/screens2/question2/question_model2.dart';

class AnswerWidget2 extends StatefulWidget {
  QuestionMOdel2 questionModel2;
  final ValueChanged<bool> onAnswerSelecteed;

  AnswerWidget2({super.key, required this.questionModel2,
                required this.onAnswerSelecteed,});

  @override
  State<AnswerWidget2> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget2> {


  @override
  Widget build(BuildContext context) {
    return Column(children: [
        OptionWidget(
          optino: widget.questionModel2.option1.title,
          isSelected: widget.questionModel2.option1.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel2.option1.isSelected =
                  !widget.questionModel2.option1.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel2.trueAnswor ==
                widget.questionModel2.option1.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel2.option2.title,
          isSelected: widget.questionModel2.option2.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel2.option2.isSelected =
                  !widget.questionModel2.option2.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel2.trueAnswor ==
                widget.questionModel2.option2.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel2.option3.title,
          isSelected: widget.questionModel2.option3.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel2.option3.isSelected =
                  !widget.questionModel2.option3.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel2.trueAnswor ==
                widget.questionModel2.option3.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel2.option4.title,
          isSelected: widget.questionModel2.option4.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel2.option4.isSelected =
                  !widget.questionModel2.option4.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel2.trueAnswor ==
                widget.questionModel2.option4.isSelected);
          },
        ),
    ],);
  }
}