import 'package:get/get.dart';
import 'package:sensor_management_service/app/global_widgets/table/datasource.dart';
import 'package:sensor_management_service/edge_device.dart';

class SMSEdgeDeviceController extends GetxController {
  var edgeDeviceDataSource = EdgeDeviceDataSource(edgeDeviceData: []).obs;
  var edgeDevices = [];

  getEdgeDeviceData() {
    List<EdgeDevice> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(EdgeDevice("218000000001", "EMS GTI 5.0", "THWC", 'THOA',
          "CSV_R0123456", "draft", "18/03/2020"));
    }
    edgeDeviceDataSource(EdgeDeviceDataSource(edgeDeviceData: list));
  }
}
