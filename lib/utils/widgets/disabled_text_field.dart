import 'package:flutter/material.dart';

import '../custom_colors.dart';

Widget disabledTextField({
  TextEditingController? textController,
}) {
  return SizedBox(
    height: 48,
    child: TextField(
      controller: textController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          filled: true,
          isDense: true,
          fillColor: CustomColors.secondaryColor,
          prefixIcon: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            padding: const EdgeInsets.all(4),
            child: Icon(
              Icons.mail,
              size: 20,
              color: CustomColors.secondaryColor,
            ),
          ),
          label: const Text(
            "Copy tracking numbers from email",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          enabled: false,
          suffixIcon: const Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: 24,
          )),
    ),
  );
}
