import 'package:get/get.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/controller/controller.dart';

class SMSEdgeDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SMSEdgeDeviceController>(() => SMSEdgeDeviceController());
  }
}
