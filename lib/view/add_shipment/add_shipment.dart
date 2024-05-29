import 'package:aftership_mvvm/view/add_shipment/add_ship_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/custom_colors.dart';
import '../../utils/widgets/disabled_text_field.dart';
import '../../utils/widgets/text_field_widget.dart';

class AddShipment extends StatefulWidget {
  const AddShipment({super.key});

  @override
  State<AddShipment> createState() => _AddShipmentState();
}

class _AddShipmentState extends State<AddShipment> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddShipController>(
        init: AddShipController(),
        builder: (_) => Scaffold(
              appBar: AppBar(),
              body: SafeArea(
                  minimum:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Add shipment",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 22)),
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                          onTap: () => Navigator.of(context)
                              .restorablePush(_dialogBuilder),
                          child: disabledTextField(
                              textController: _.emailTrackingController)),
                      const SizedBox(
                        height: 24,
                      ),
                      outlinedTextField(
                          hint: "Tracking number",
                          icon: Icons.qr_code_2_outlined,
                          textController: _.trackingNoController),
                      const SizedBox(
                        height: 22,
                      ),
                      outlinedTextField(
                          hint: "Search courier",
                          textController: _.courierController),
                      const SizedBox(
                        height: 22,
                      ),
                      outlinedTextField(
                          hint: "Title (Optional)",
                          textController: _.titleController),
                      const SizedBox(
                        height: 36,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                CustomColors.primaryColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            minimumSize: const MaterialStatePropertyAll(
                                Size(double.maxFinite, 48))),
                        child: const Text(
                          "Add shipment",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  )),
            ));
  }

  @pragma('vm:entry-point')
  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return CupertinoDialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Image.asset("assets/images/dialog.png", height: 150),
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
