import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/widgets/text/text_span.dart';

class KoothaTermsAndConditions extends StatelessWidget {
  const KoothaTermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              customTextSpan(
                text: "By logging in, you agree to Kootha’s",
                onTap: TapGestureRecognizer()..onTap = () {},
              ),
              customTextSpan(
                text: " terms and conditions",
                underLine: true,
                onTap: TapGestureRecognizer()..onTap = () {},
              ),
              customTextSpan(
                text: " and ",
                onTap: TapGestureRecognizer()..onTap = () {},
              ),
              customTextSpan(
                text: "privacy policy",
                underLine: true,
                onTap: TapGestureRecognizer()..onTap = () {},
              ),
              // customTextSpan(
              //   text: Strings.kTerms5,
              //   onTap: TapGestureRecognizer()..onTap = () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
