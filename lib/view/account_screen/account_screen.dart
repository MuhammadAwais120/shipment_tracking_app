import 'package:aftership_mvvm/view/account_screen/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/custom_colors.dart';
import '../../utils/widgets/list_tile_widget.dart';
import '../dashboard/dashboard.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
        init: AccountController(),
        builder: (_) => Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/account.png"),
                              radius: 22),
                          SizedBox(height: 8),
                          Text(
                            "SIGN UP/LOGIN",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 28),
                        ],
                      ),
                    ),
                    Container(
                      color: CustomColors.dividerColor,
                      height: 18,
                    ),
                    listTileWidget(
                        title: "Account",
                        onTap: () => Get.to(() => const DashboardScreen())),
                    listTileWidget(title: "Add orders automatically"),
                    listTileWidget(title: "Notification"),
                    listTileWidget(title: "Language", trailingText: "Auto"),
                    Container(
                      color: CustomColors.dividerColor,
                      height: 18,
                    ),
                    listTileWidget(title: "About the app"),
                    listTileWidget(title: "Share the app"),
                    listTileWidget(title: "Feedback"),
                  ],
                ),
              ),
            ));
  }
}
