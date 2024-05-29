import 'package:flutter/material.dart';

Widget customTextButton(
    {required String text,
    TextStyle? style,
    required void Function()? onPressed}) {
  return TextButton(
      style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(35, 26)),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 2, horizontal: 2)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          side: const MaterialStatePropertyAll(BorderSide.none)),
      onPressed: onPressed,
      child: Text(
        text,
        style: style,
      ));
}
