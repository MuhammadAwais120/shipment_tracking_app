import 'package:aftership_mvvm/view/shipment_screen/shipment_controller.dart';
import 'package:get/get.dart';

class ShipmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShipmentController>(() => ShipmentController());
  }
}
