import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/constants/constants.dart';

/// custom raised/elevated button widget
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
    this.disabled = false,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Container(
        constraints: const BoxConstraints(minHeight: 55),
        width: double.infinity,
        child: ElevatedButton(
          child: Text(
            text.trim(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          onPressed: disabled ? () {} : onTap,
          style: !disabled
              ? ElevatedButton.styleFrom(
                  primary: kBottonColor, // background
                  onPrimary: textColor, // text color
                )
              : ElevatedButton.styleFrom(
                  primary: kLightGreyColor, // background
                  onPrimary: kWhiteColor, // text color
                ),
        ),
      ),
    );
  }
}
