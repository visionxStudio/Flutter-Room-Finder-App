import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/widgets/button/custom_rounded_button.dart';
import 'package:roomfinder/src/common/widgets/input_field/minimal_input_field.dart';

import 'custom_button.dart';
import 'fade_slide_transition.dart';

class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({
    Key? key,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double space = height > 650 ? 16 : 8;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: const MinimalInputField(hintText: "Email"),
          ),
          FadeSlideTransition(
              animation: animation,
              additionalOffset: space,
              child: const MinimalInputField(hintText: "Password")),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomRoundedButton(
              backgroundColor: kBottonColor,
              text: "Continue",
              onTap: () {},
            ),
          ),
          SizedBox(height: space),
          // FadeSlideTransition(
          //   animation: animation,
          //   additionalOffset: 4 * space,
          //   child: CustomButton(
          //     color: Colors.black,
          //     textColor: Colors.white,
          //     text: 'Create a Bubble Account',
          //     onPressed: () {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
