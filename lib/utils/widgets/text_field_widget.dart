import 'package:flutter/material.dart';

import '../custom_colors.dart';

Widget outlinedTextField(
    {IconData? icon,
    Widget? prefix,
    String? hint,
    bool obscureText = false,
    String? label,
    TextEditingController? textController,
    TextInputType? keyboard,
    Color? borderColor}) {
  return SizedBox(
    height: 48,
    child: TextField(
      obscureText: obscureText,
      controller: textController,
      keyboardType: keyboard,
      cursorColor: CustomColors.primaryColor,
      decoration: InputDecoration(
          prefix: prefix,
          suffixIcon: Icon(icon),
          fillColor: Colors.white,
          label: label != null ? Text(label) : null,
          isDense: true,
          filled: true,
          hintText: "$hint",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: CustomColors.primaryColor),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1.5, color: borderColor ?? CustomColors.dividerColor),
              borderRadius: BorderRadius.circular(8))),
    ),
  );
}

Widget underlinedTextField(
    {IconData? icon,
    EdgeInsetsGeometry? contentPadding,
    Widget? prefix,
    TextStyle? textStyle,
    String? hint,
    bool obscureText = false,
    String? label,
    TextEditingController? textController,
    TextInputType? keyboard,
    BuildContext? context,
    FocusNode? currentFocus,
    FocusNode? nextFocus,
    Color? borderColor}) {
  return SizedBox(
      height: 48,
      child: TextField(
        textAlign: TextAlign.start,
        style: textStyle,
        obscureText: obscureText,
        controller: textController,
        keyboardType: keyboard,
        cursorColor: CustomColors.primaryColor,
        focusNode: currentFocus,
        decoration: InputDecoration(
          prefix: prefix,
          contentPadding: contentPadding,
          suffixIcon: Icon(icon),
          fillColor: Colors.white,
          label: label != null ? Text(label) : null,
          isDense: true,
          filled: true,
          hintText: "$hint",
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColors.dividerColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 1, color: CustomColors.primaryColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                width: 1.5, color: borderColor ?? CustomColors.dividerColor),
          ),
        ),
        onSubmitted: (value) {
          currentFocus?.unfocus();
          FocusScope.of(context!).requestFocus(nextFocus);
        },
      ));
}

Widget customTextFormField(
    {IconData? icon,
    String? hint,
    bool obscureText = false,
    String? label,
    TextEditingController? textController,
    TextInputType? keyboard,
    Color? borderColor}) {
  return SizedBox(
    height: 48,
    child: TextFormField(
      obscureText: obscureText,
      controller: textController,
      keyboardType: keyboard,
      cursorColor: CustomColors.primaryColor,
      decoration: InputDecoration(
          suffixIcon: Icon(icon),
          fillColor: Colors.white,
          label: label != null ? Text(label) : const Text(""),
          isDense: true,
          filled: true,
          hintText: "$hint",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: CustomColors.primaryColor),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1.5, color: borderColor ?? CustomColors.dividerColor),
              borderRadius: BorderRadius.circular(8))),
    ),
  );
}
