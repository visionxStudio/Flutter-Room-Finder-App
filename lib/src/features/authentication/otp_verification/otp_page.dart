import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/widgets/button/custom_rounded_button.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:roomfinder/src/features/authentication/otp_verification/widgets/otp_form.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kScafoldColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            AutoRouter.of(context).pop();
          },
          borderRadius: BorderRadius.circular(50.0),
          child: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
        elevation: 0.0,
        backgroundColor: kScafoldColor,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const Spacer(),
                const HeightWidget(30.0),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NormalText(
                      "verification_page.otp_verification".tr(context),
                      fontSize: 24.0,
                    ),
                    const HeightWidget(8.0),
                    NormalText(
                      "verification_page.five_digit_code".tr(context) +
                          "(+61) 9810456789",
                      lineHight: 1.4,
                      color: kLightGreyColor,
                      isCentered: true,
                    ),
                  ],
                ),
                // const Spacer(),
                const HeightWidget(50.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: OtpForm(),
                ),

                const Spacer(),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomRoundedButton(
                      text: "verification_page.continue".tr(context),
                      onTap: () {},
                      borderRadius: 8.0,
                      backgroundColor: kBottonColor,
                      fontWeight: FontWeight.w400,
                      width: width * 0.9,
                    ),
                    const HeightWidget(16.0),
                    NormalText(
                      "verification_page.resend_otp".tr(context),
                      color: kTextLinkColor,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                const Spacer(),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
