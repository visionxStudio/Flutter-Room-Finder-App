import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final Widget? image;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.text,
    required this.onPressed,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      child: image != null
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onPressed: onPressed,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: image,
                  ),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            )
          : TextButton(
              style: TextButton.styleFrom(
                backgroundColor: color,
                padding: const EdgeInsets.all(32.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onPressed: onPressed,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: textColor, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
