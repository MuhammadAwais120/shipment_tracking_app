import 'package:aftership_mvvm/view/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../utils/widgets/list_tile_widget.dart';
import '../login/login.dart';

final authWithSupaBase = Supabase.instance.client;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (_) => Scaffold(
              body: SafeArea(
                  child: Column(
                children: [
                  const SizedBox(height: 40),
                  listTileWidget(
                    title: "Logout",
                    onTap: () {
                      // authWithSupaBase.auth.signOut();
                      Get.offAll(() => const LoginScreen());
                    },
                  )
                ],
              )),
            ));
  }
}
