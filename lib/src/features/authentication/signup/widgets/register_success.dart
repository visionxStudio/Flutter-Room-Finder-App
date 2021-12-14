import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/constants/asset_image_link.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/utils/app_size_utils.dart';
import 'package:roomfinder/src/common/widgets/button/custom_elevated_button.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:auto_route/auto_route.dart';

class RegisterSuccessful extends StatelessWidget {
  final String message;

  const RegisterSuccessful({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: SizeConfig.screenWidth * 0.8,
      decoration: BoxDecoration(
        color: kDialogBoxSuccess,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: kWhiteColor),
            child: Image.asset(
              ImageAsset.emailSent,
              height: 150.0,
              width: 150.0,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: kDialogBoxSuccess,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                    // "a Confirmation  mail has been sent to your e-mail"
                    //     .toUpperCase(),
                    message.toUpperCase(),
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    isCentered: true,
                    fontSize: 18.0,
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: NormalText(
                      "Please verify your e-mail to be able to  login.",
                      color: kWhiteColor,
                      fontWeight: FontWeight.w400,
                      isCentered: true,
                      fontSize: 18.0,
                    ),
                  ),
                  const Spacer(),
                  CustomElevatedButton(
                    text: "Continue",
                    onTap: () {
                      context.router.pop();
                    },
                    backgroundColor: kWhiteColor,
                    textColor: kDialogBoxSuccess,
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
