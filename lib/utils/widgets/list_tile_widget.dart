import 'package:flutter/material.dart';

Widget listTileWidget(
    {required String title, String? trailingText, void Function()? onTap}) {
  return ListTile(
    onTap: onTap,
    visualDensity: const VisualDensity(vertical: -1, horizontal: 0),
    shape: Border(
        bottom: BorderSide(width: 0.8, color: Colors.grey.withOpacity(0.5))),
    title: Text(title, style: const TextStyle(fontSize: 16)),
    trailing: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (trailingText != null)
          Text(
            trailingText,
            style: TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 16),
          ),
        const SizedBox(width: 8),
        const Icon(Icons.arrow_forward_ios, size: 14)
      ],
    ),
    dense: true,
  );
}
