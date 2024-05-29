import 'package:aftership_mvvm/view/sync_shipment/sync_ship_controller.dart';
import 'package:get/get.dart';

class SyncShipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SyncShipController>(() => SyncShipController());
  }
}
