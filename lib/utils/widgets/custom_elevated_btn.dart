import 'package:flutter/material.dart';

import '../custom_colors.dart';

Widget customElevatedButton(
    {required Widget? icon, required void Function()? onPressed}) {
  return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(CustomColors.primaryColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          minimumSize:
              const MaterialStatePropertyAll(Size(double.maxFinite, 30))),
      child: icon);
}
