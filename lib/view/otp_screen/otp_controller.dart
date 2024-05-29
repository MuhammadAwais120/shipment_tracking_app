import 'package:aftership_mvvm/utils/custom_colors.dart';
import 'package:aftership_mvvm/view_model/controller/common_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_autofill/otp_autofill.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../utils/routes/routes_name.dart';

final authWithSupaBase = Supabase.instance.client;

class OtpController extends CommonController {
  String phoneController = '';
  late OTPTextEditController otpPinPutController;
  RxBool loadingIndicator = false.obs;
  final scaffoldKey = GlobalKey();
  late OTPInteractor _otpInteractor;
  dynamic phone = Get.arguments;

  @override
  void onInit() {
    super.onInit();
    phoneController = phone;
    _initInteractor();
    otpPinPutController = OTPTextEditController(
      codeLength: 6,
      onCodeReceive: (code) => print('Your Application receive code - $code'),
      otpInteractor: _otpInteractor,
    )..startListenUserConsent(
        (code) {
          final exp = RegExp(r'(\d{6})');
          return exp.stringMatch(code ?? '') ?? '';
        },
        strategies: [],
      );
  }

  Future<void> _initInteractor() async {
    _otpInteractor = OTPInteractor();
    final appSignature = await _otpInteractor.getAppSignature();

    if (kDebugMode) {
      print('Your app signature: $appSignature');
    }
  }

  @override
  void dispose() {
    otpPinPutController.stopListen();
    super.dispose();
  }

  Future<void> authWithOTP() async {
    loadingIndicator.value = true;
    try {
      if (otpPinPutController.text.length == 6) {
        // final res = await Supabase.instance.client.auth.verifyOTP(
        //     token: otpPinPutController.text, type: OtpType.sms, phone: phoneController);
        // if (res.session!.accessToken.isNotEmpty) {
        Get.snackbar("Success", "Welcome!",
            animationDuration: const Duration(milliseconds: 1000),
            backgroundColor: CustomColors.primaryColor.withOpacity(0.7),
            colorText: Colors.white);
        Future.delayed(const Duration(milliseconds: 300),
            () => Get.offNamedUntil(RoutesName.mainScreen, (route) => false));
        // }
      }
      loadingIndicator.value = false;
    } catch (e) {
      loadingIndicator.value = true;
      Get.snackbar("Exception", e.toString(),
          animationDuration: const Duration(milliseconds: 1000),
          backgroundColor: Colors.red.withOpacity(0.7),
          colorText: Colors.white);
      loadingIndicator.value = false;
    }
  }

  // Future<void> onChangedCalled() async {}
}
