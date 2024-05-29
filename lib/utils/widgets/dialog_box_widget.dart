import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_colors.dart';

class DialogBoxWidget extends StatefulWidget {
  const DialogBoxWidget({super.key});

  @override
  State<DialogBoxWidget> createState() => _DialogBoxWidgetState();
}

class _DialogBoxWidgetState extends State<DialogBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            Navigator.of(context).restorablePush(_dialogBuilder);
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }

  @pragma('vm:entry-point')
  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return CupertinoDialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Image.asset("assets/images/dialog.png"),
          content: Column(children: [
            Text(
              "Auto-track orders with email syncs",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "We only read shopping order related",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 12,
                  height: 1.5),
            ),
            Text(
              "emails. No longer need to add shipments",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 12,
                  height: 1.5),
            ),
            Text(
              "manually!",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 12,
                  height: 1.5),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Container(
                  padding: const EdgeInsets.all(11),
                  color: Colors.white,
                  child: Image.asset(
                    "assets/images/google.png",
                    height: 24,
                  )),
              onPressed: () {},
              style: ButtonStyle(
                  padding:
                      const MaterialStatePropertyAll(EdgeInsets.only(left: 1)),
                  alignment: Alignment.centerLeft,
                  backgroundColor:
                      MaterialStatePropertyAll(CustomColors.secondaryColor),
                  minimumSize: const MaterialStatePropertyAll(
                      Size(double.maxFinite, 48)),
                  shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder())),
              label: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CONTINUE WITH GOOGLE",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Container(
                  padding: const EdgeInsets.all(11),
                  color: Colors.white,
                  child: Image.asset(
                    "assets/images/outlook.png",
                    height: 24,
                  )),
              onPressed: () {},
              style: ButtonStyle(
                  padding:
                      const MaterialStatePropertyAll(EdgeInsets.only(left: 1)),
                  alignment: Alignment.centerLeft,
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  minimumSize: const MaterialStatePropertyAll(
                      Size(double.maxFinite, 48)),
                  shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder())),
              label: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SIGN IN WITH OUTLOOK",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 20,
              child: TextButton(
                  style: ButtonStyle(
                      minimumSize: const MaterialStatePropertyAll(Size(35, 26)),
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 2, horizontal: 8)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      side: const MaterialStatePropertyAll(BorderSide.none)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "LATER",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 14),
                  )),
            ),
          ]),
        );
      },
    );
  }
}
