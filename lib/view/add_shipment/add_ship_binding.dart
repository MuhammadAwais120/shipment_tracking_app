import 'package:aftership_mvvm/view/add_shipment/add_ship_controller.dart';
import 'package:get/get.dart';

class AddShipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddShipController>(() => AddShipController());
  }
}
