import 'package:aftership_mvvm/utils/routes/routes_name.dart';
import 'package:aftership_mvvm/view/sync_shipment/sync_ship_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/custom_colors.dart';
import '../../utils/widgets/carousel_widget.dart';

class SyncShipment extends StatefulWidget {
  const SyncShipment({super.key});

  @override
  State<SyncShipment> createState() => _SyncShipmentState();
}

class _SyncShipmentState extends State<SyncShipment> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SyncShipController>(
        init: SyncShipController(),
        builder: (_) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                actions: [
                  TextButton(
                      style: ButtonStyle(
                          minimumSize:
                              const MaterialStatePropertyAll(Size(35, 26)),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          side:
                              const MaterialStatePropertyAll(BorderSide.none)),
                      onPressed: () {
                        Get.toNamed(RoutesName.mainScreen);
                      },
                      child: Text(
                        "SKIP",
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      )),
                  const SizedBox(width: 10)
                ],
              ),
              body: Expanded(
                child: SafeArea(
                  minimum:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 85,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          height: 350,
                          child: const CarouselSliderWidget(),
                        ),
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
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.only(left: 1)),
                              alignment: Alignment.centerLeft,
                              backgroundColor: MaterialStatePropertyAll(
                                  CustomColors.secondaryColor),
                              minimumSize: const MaterialStatePropertyAll(
                                  Size(double.maxFinite, 48)),
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder())),
                          label: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "CONTINUE WITH GOOGLE",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Or continue with",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.outlined(
                                highlightColor: CustomColors.dividerColor,
                                onPressed: () {},
                                style: ButtonStyle(
                                    elevation:
                                        const MaterialStatePropertyAll(8),
                                    side: MaterialStatePropertyAll(BorderSide(
                                        width: 0.5,
                                        color: Colors.grey.withOpacity(0.6)))),
                                icon: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(
                                    "assets/images/outlook.png",
                                    height: 24,
                                  ),
                                )),
                            const SizedBox(
                              width: 16,
                            ),
                            IconButton.outlined(
                                highlightColor: CustomColors.dividerColor,
                                onPressed: () {},
                                style: ButtonStyle(
                                    elevation:
                                        const MaterialStatePropertyAll(8),
                                    side: MaterialStatePropertyAll(BorderSide(
                                        width: 0.5,
                                        color: Colors.grey.withOpacity(0.6)))),
                                icon: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(
                                    "assets/images/email.png",
                                    height: 24,
                                    width: 24,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 700,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "By continuing, you agree to our",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.withOpacity(0.8)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 24,
                                    child: TextButton(
                                        style: ButtonStyle(
                                            minimumSize:
                                                const MaterialStatePropertyAll(
                                                    Size(30, 16)),
                                            padding:
                                                const MaterialStatePropertyAll(
                                                    EdgeInsets.zero),
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8))),
                                            side:
                                                const MaterialStatePropertyAll(
                                                    BorderSide.none)),
                                        onPressed: () {},
                                        child: Text(
                                          "Terms of Service",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomColors.primaryColor
                                                  .withOpacity(0.7)),
                                        )),
                                  ),
                                  Text(
                                    "and",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    child: TextButton(
                                        style: ButtonStyle(
                                            minimumSize:
                                                const MaterialStatePropertyAll(
                                                    Size(30, 16)),
                                            padding:
                                                const MaterialStatePropertyAll(
                                                    EdgeInsets.all(0)),
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8))),
                                            side:
                                                const MaterialStatePropertyAll(
                                                    BorderSide.none)),
                                        onPressed: () {},
                                        child: Text(
                                          "Privacy Policy",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomColors.primaryColor
                                                  .withOpacity(0.7)),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
