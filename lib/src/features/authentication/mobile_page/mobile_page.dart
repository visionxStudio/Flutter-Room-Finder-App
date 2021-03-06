import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/widgets/button/custom_rounded_button.dart';
import 'package:roomfinder/src/common/widgets/dropdown/country_code.dart';
import 'package:roomfinder/src/common/widgets/input_field/minimal_input_field.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:roomfinder/src/routes/app_router.gr.dart';
import 'package:statusbarz/statusbarz.dart';

class MobileNumberPage extends StatelessWidget {
  const MobileNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    Statusbarz.instance.refresh();

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
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // const Spacer(),
              const HeightWidget(30.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NormalText(
                    "mobile_number_page.enter_mobile".tr(context),
                    fontSize: 24.0,
                  ),
                  const HeightWidget(8.0),
                  NormalText(
                    "mobile_number_page.will_send_otp".tr(context),
                    color: kLightGreyColor,
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CountryCodeDropdown(),
                    WidthWidget(8.0),
                    Expanded(
                      child: MinimalInputField(
                        hintText: "(00)-00-00-00-00",
                        maxLines: 10,
                        textInputType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomRoundedButton(
                    text: "mobile_number_page.continue".tr(context),
                    onTap: () {
                      context.router.push(const OtpPageRoute());
                    },
                    borderRadius: 8.0,
                    backgroundColor: kBottonColor,
                    fontWeight: FontWeight.w400,
                    width: width * 0.9,
                  ),
                  const HeightWidget(16.0),
                  NormalText(
                    "mobile_number_page.already_account".tr(context),
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
    );
  }
}
