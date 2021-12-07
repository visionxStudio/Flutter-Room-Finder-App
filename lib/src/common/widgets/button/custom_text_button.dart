import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/constants/constants.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomTextButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style:
            const TextStyle(color: kAppBarColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}
