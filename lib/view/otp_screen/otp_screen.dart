import 'package:aftership_mvvm/utils/utils.dart';
import 'package:aftership_mvvm/view/otp_screen/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../utils/custom_colors.dart';
import '../../utils/widgets/carousel_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(
        init: OtpController(),
        builder: (_) => Scaffold(
              key: _.scaffoldKey,
              body: SafeArea(
                minimum: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 100),
                        const SizedBox(
                          height: 280,
                          child: CarouselLoginSliderWidget(),
                        ),
                        Text("aftership",
                            style: TextStyle(
                                fontSize: 40,
                                color: CustomColors.primaryColor,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Please enter OTP below sent ",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.7))),
                            Text(_.phoneController,
                                style: TextStyle(
                                    color: CustomColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Pinput(
                            controller: _.otpPinPutController,
                            length: 6,
                            onChanged: (value) => _.authWithOTP())
                      ]),
                ),
              ),
              floatingActionButton: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Obx(() => _.loadingIndicator.value
                    ? SizedBox(
                        height: 40,
                        child: kLoadingWidget(),
                      )
                    : Container()),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
            ));
  }
}
