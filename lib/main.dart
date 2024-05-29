import 'package:aftership_mvvm/utils/Konst/Konst.dart';
import 'package:aftership_mvvm/utils/custom_colors.dart';
import 'package:aftership_mvvm/utils/routes/routes.dart';
import 'package:aftership_mvvm/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: Konst.baseUrl, anonKey: Konst.token);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "AfterShip",
      theme: ThemeData(
        // fontFamily: 'Questrial',
        fontFamily: 'Lato',
        // fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: CustomColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primaryColor),
        indicatorColor: CustomColors.primaryColor,
        hintColor: CustomColors.lightGrey,
        dividerColor: CustomColors.dividerColor,
        cardColor: Colors.white,
        tabBarTheme: TabBarTheme(
          unselectedLabelColor: CustomColors.lightGrey,
          labelColor: CustomColors.primaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: UnderlineTabIndicator(
            borderSide:
                BorderSide(color: CustomColors.primaryColor, width: 2.0),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splash,
      getPages: Routes.pages,
    );
  }
}
