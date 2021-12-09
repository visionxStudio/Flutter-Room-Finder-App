import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/utils/app_size_utils.dart';
import 'package:roomfinder/src/common/widgets/input_field/minimal_input_field.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:roomfinder/src/features/authentication/widgets/kootha_terms_conditions.dart';
import 'package:roomfinder/src/features/authentication/widgets/rounded_button_text.dart';
import 'package:roomfinder/src/features/authentication/widgets/social_login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafoldColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: SizeConfig.screenHeight,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => context.router.pop(),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: kBlackColor,
                    ),
                  ),
                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        NormalText(
                          "Register ",
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          color: kAppBarColor,
                        ),
                        HeightWidget(8.0),
                        NormalText(
                          "We will send verification Email \n  to verify it’s you.",
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: ksearchText,
                          isCentered: true,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  // Form Field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MinimalInputField(hintText: "Full Name"),
                      const MinimalInputField(hintText: "E-Mail"),
                      const MinimalInputField(hintText: "Password"),
                      const MinimalInputField(hintText: "Confirm Password"),
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
                  const Spacer(),

                  RoundedButtonAndText(
                    buttonText: "Register",
                    optionText: "Already have an account? Login",
                    buttonTap: () {},
                    optionTap: () {},
                  ),
                  const Spacer(),

                  const SocialLogin(),
                  const Spacer(),

                  const KoothaTermsAndConditions(),
                  const HeightWidget(16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
