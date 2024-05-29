import 'package:flutter/material.dart';

import '../custom_colors.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: CustomColors.primaryColor)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: CustomColors.primaryColor)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: CustomColors.dividerColor)),
            counterText: '',
            hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
