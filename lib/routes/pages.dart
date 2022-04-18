import 'package:get/get.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/bindings/sms_edge_device_binding.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/sms_edge_device.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SMS_EDGE_DEVICE;

  static final routes = [
    GetPage(
      name: _Paths.SMSEdgeDevice,
      page: () => SMSEdgeDeviceView(),
      binding: SMSEdgeDeviceBinding(),
    ),
  ];
}
