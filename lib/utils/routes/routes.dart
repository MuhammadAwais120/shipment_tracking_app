import 'package:aftership_mvvm/utils/routes/routes_name.dart';
import 'package:aftership_mvvm/view/account_screen/account_screen.dart';
import 'package:aftership_mvvm/view/add_shipment/add_shipment.dart';
import 'package:aftership_mvvm/view/login/login.dart';
import 'package:aftership_mvvm/view/otp_screen/otp_binding.dart';
import 'package:aftership_mvvm/view/otp_screen/otp_screen.dart';
import 'package:aftership_mvvm/view/shipment_screen/shipment_screen.dart';
import 'package:aftership_mvvm/view/splash/splash.dart';
import 'package:aftership_mvvm/view/sync_shipment/sync_shipment.dart';
import 'package:get/get.dart';
import '../../view/login/login_binding.dart';
import '../../view/sync_shipment/sync_ship_binding.dart';
import '../../view/welcome/welcome_screen.dart';

class Routes {
  static final List<GetPage> pages = [
    GetPage(
        name: RoutesName.splash,
        page: () => const SplashScreen(),
        binding: LoginBinding()),
    GetPage(
      name: RoutesName.login,
      page: () => const LoginScreen(), /*binding: LoginBinding()*/
    ),
    GetPage(
      name: RoutesName.mainScreen,
      page: () => const MainScreen(), /*binding: LoginBinding()*/
    ),
    GetPage(
      name: RoutesName.addShipment,
      page: () => const AddShipment(), /*binding: LoginBinding()*/
    ),
    GetPage(
        name: RoutesName.syncShipment,
        page: () => const SyncShipment(),
        binding: SyncShipBinding()),
    GetPage(
      name: RoutesName.accountScreen,
      page: () => const AccountScreen(), /*binding: LoginBinding()*/
    ),
    GetPage(
      name: RoutesName.shipmentScreen,
      page: () => const ShipmentScreen(), /*binding: LoginBinding()*/
    ),
    GetPage(
        name: RoutesName.otpScreen,
        page: () => const OtpScreen(),
        binding: OtpBinding()),
  ];
}
