import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/asset_image_link.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/widgets/button/custom_rounded_button.dart';
import 'package:roomfinder/src/common/widgets/input_field/minimal_input_field.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:roomfinder/src/common/widgets/text/text_span.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MinimalInputField(
                  hintText: "login_page.email".tr(context),
                  textInputType: TextInputType.emailAddress,
                ),
                MinimalInputField(
                  hintText: "login_page.password".tr(context),
                  isPassword: true,
                ),
                NormalText(
                  "login_page.password_rule1".tr(context),
                  color: kDarkGrey,
                  fontSize: 16.0,
                ),
                NormalText(
                  "login_page.password_rule2".tr(context),
                  color: kDarkGrey,
                  fontSize: 16.0,
                )
              ],
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: Column(
              children: [
                CustomRoundedButton(
                  text: "login_page.continue".tr(context),
                  onTap: () {},
                ),
                const HeightWidget(8.0),
                NormalText(
                  "login_page.no_account".tr(context),
                  color: kBottonColor,
                )
              ],
            ),
          ),
          const HeightWidget(32.0),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: Column(
              children: [
                CustomRoundedButton(
                  icon: IconAsset.google,
                  fontColor: kNavBackgroundColor,
                  backgroundColor: kWhiteColor,
                  text: "login_page.google".tr(context),
                  onTap: () {},
                ),
                const HeightWidget(8.0),
                CustomRoundedButton(
                  icon: IconAsset.facebook,
                  fontColor: kNavBackgroundColor,
                  backgroundColor: kWhiteColor,
                  text: "login_page.facebook".tr(context),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const HeightWidget(30.0),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 4 * space,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
            ),
          ),
        ],
      ),
    );
  }
}
