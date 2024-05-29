import 'package:aftership_mvvm/view_model/controller/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../utils/custom_colors.dart';
import '../otp_screen/otp_screen.dart';

final authWithSupaBase = Supabase.instance.client;

class LoginController extends CommonController {
  TextEditingController phoneController = TextEditingController();
  String? codeController = "+92";
  String phone = "";
  var loadingIndicator = false.obs;
  FocusNode focusNode = FocusNode();

  Future<void> authWithPhone() async {
    try {
      loadingIndicator.value = true;
      // await authWithSupaBase.auth.signInWithOtp(phone: phone);
      if (phoneController.text.length == 10) {
        Get.off(() => const OtpScreen(), arguments: phone);
        Get.snackbar("Success", "Will send you OTP shortly",
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: CustomColors.primaryColor.withOpacity(0.7),
            colorText: Colors.white);
      } else {
        Get.snackbar("Error", "Enter 10 digit number");
      }
      // Get.off(() => const OtpScreen(), arguments: phone);
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
}
