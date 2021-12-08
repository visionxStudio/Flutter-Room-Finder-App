import 'package:flutter/material.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/asset_image_link.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/widgets/button/custom_rounded_button.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
