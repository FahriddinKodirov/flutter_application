import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens2/question1/options_widget.dart';
import 'package:flutter_application_1/screens2/question1/question_model.dart';
import 'package:flutter_application_1/screens2/question2/question_model2.dart';

class AnswerWidget extends StatefulWidget {
  QuestionModel questionModel;
  final ValueChanged<bool> onAnswerSelecteed;

  AnswerWidget({super.key, required this.questionModel,
                required this.onAnswerSelecteed,});

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {


  @override
  Widget build(BuildContext context) {
    return Column(children: [
        OptionWidget(
          optino: widget.questionModel.option1.title,
          isSelected: widget.questionModel.option1.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option1.isSelected =
                  !widget.questionModel.option1.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel.trueAnswor ==
                widget.questionModel.option1.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel.option2.title,
          isSelected: widget.questionModel.option2.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option2.isSelected =
                  !widget.questionModel.option2.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel.trueAnswor ==
                widget.questionModel.option2.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel.option3.title,
          isSelected: widget.questionModel.option3.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option3.isSelected =
                  !widget.questionModel.option3.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel.trueAnswor ==
                widget.questionModel.option3.isSelected);
          },
        ),
        OptionWidget(
          optino: widget.questionModel.option4.title,
          isSelected: widget.questionModel.option4.isSelected,
          onTap: () {
            setState(() {
              widget.questionModel.option4.isSelected =
                  !widget.questionModel.option4.isSelected;
            });
            widget.onAnswerSelecteed(widget.questionModel.trueAnswor ==
                widget.questionModel.option4.isSelected);
          },
        ),
    ],);
  }
}