import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/constants/asset_image_link.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/utils/app_size_utils.dart';
import 'package:roomfinder/src/common/widgets/button/custom_elevated_button.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:auto_route/auto_route.dart';

class RegisterError extends StatelessWidget {
  final String message;

  const RegisterError({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: SizeConfig.screenWidth * 0.8,
      decoration: BoxDecoration(
        color: kDialogBoxFailure,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: kWhiteColor),
            child: Image.asset(
              ImageAsset.error,
              height: 150.0,
              width: 150.0,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: kDialogBoxFailure,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  NormalText(
                    message.toUpperCase(),
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    isCentered: true,
                    fontSize: 18.0,
                  ),
                  const Spacer(),
                  CustomElevatedButton(
                    text: "Okay",
                    onTap: () {
                      context.router.pop();
                    },
                    backgroundColor: kWhiteColor,
                    textColor: kDialogBoxFailure,
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
