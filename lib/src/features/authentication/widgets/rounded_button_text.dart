import 'package:flutter/material.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/widgets/button/custom_rounded_button.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';

class RoundedButtonAndText extends StatelessWidget {
  const RoundedButtonAndText({
    Key? key,
    required this.buttonText,
    required this.optionText,
    required this.buttonTap,
    required this.optionTap,
  }) : super(key: key);
  final String buttonText;
  final VoidCallback buttonTap;
  final String optionText;
  final VoidCallback optionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRoundedButton(
          text: buttonText,
          onTap: buttonTap,
        ),
        const HeightWidget(8.0),
        GestureDetector(
          onTap: optionTap,
          child: NormalText(
            optionText,
            color: kBottonColor,
            fontSize: 16.0,
          ),
        )
      ],
    );
  }
}
