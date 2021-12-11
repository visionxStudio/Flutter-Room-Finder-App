import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/widgets/input_field/minimal_input_field.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:roomfinder/src/features/authentication/widgets/kootha_terms_conditions.dart';
import 'package:roomfinder/src/features/authentication/widgets/rounded_button_text.dart';
import 'package:roomfinder/src/features/authentication/widgets/social_login.dart';
import 'package:roomfinder/src/routes/app_router.gr.dart';

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
                Consumer(
                  builder: (ctx, ref, child) {
                    // final state = ref.watch(loginStateProvider);
                    return MinimalInputField(
                      hintText: "login_page.email".tr(context),
                      textInputType: TextInputType.emailAddress,
                      onChanged: (String value) {},
                    );
                  },
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
            child: RoundedButtonAndText(
              buttonText: "login_page.sign_in".tr(context),
              optionText: "login_page.no_account".tr(context),
              buttonTap: () {},
              optionTap: () => context.router.push(
                const RegisterPageRoute(),
              ),
            ),
          ),
          const HeightWidget(32.0),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: const SocialLogin(),
          ),
          const HeightWidget(30.0),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 4 * space,
            child: const KoothaTermsAndConditions(),
          ),
        ],
      ),
    );
  }
}
