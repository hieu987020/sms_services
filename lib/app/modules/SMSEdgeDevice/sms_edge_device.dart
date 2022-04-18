import 'package:flutter/material.dart';
import 'package:sensor_management_service/app/global_widgets/global_widgets.dart';
import 'package:sensor_management_service/app/global_widgets/table/datasource.dart';
import 'package:sensor_management_service/edge_device.dart';
import 'package:sensor_management_service/sensor_widget.dart';

/// The home page of the application which hosts the datagrid.
class MyHomePage extends StatefulWidget {
  /// Creates the home page.
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<EdgeDevice> edgeDevices = [];
  late EdgeDeviceDataSource edgeDeviceDataSource;

  @override
  void initState() {
    super.initState();
    edgeDevices = getEdgeDeviceData();
    edgeDeviceDataSource = EdgeDeviceDataSource(edgeDeviceData: edgeDevices);
  }

  List<EdgeDevice> getEdgeDeviceData() {
    List<EdgeDevice> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(EdgeDevice("218000000001", "EMS GTI 5.0", "THWC", 'THOA',
          "CSV_R0123456", "draft", "18/03/2020"));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WaterOSAppbar(),
            const SizedBox(height: 6),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WaterOSDrawer(
                  height: 1002,
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: EdgeDeviceTable(
                        edgeDeviceDataSource: edgeDeviceDataSource)),
                const SizedBox(width: 10),
                const SensorWidget(),
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
