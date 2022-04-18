// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sensor_management_service/app/global_widgets/global_widgets.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/controller/controller.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/local_widgets/edge_device_table.dart';
import 'package:sensor_management_service/sensor_widget.dart';

// ignore: must_be_immutable
class SMSEdgeDeviceView extends GetView<SMSEdgeDeviceController> {
  @override
  Widget build(BuildContext context) {
    controller.getEdgeDeviceData();

    // Appbar
    const appBar = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: WaterOSAppbar(),
    );

    // Drawer
    var drawer = Padding(
      padding: const EdgeInsets.only(right: 10),
      child: WaterOSDrawer(
        height: 1002,
        width: MediaQuery.of(context).size.width * 0.15,
      ),
    );

    // Edge Device Table
    var edgeDeviceTable = Obx(
      () => EdgeDeviceTable(
          edgeDeviceDataSource: controller.edgeDeviceDataSource.value),
    );

    // Sensor Widget
    const sensorWidget = Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SensorWidget(),
    );

    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Appbar
            //
            appBar,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Drawer
                drawer,

                //Edge Device Table
                edgeDeviceTable,

                //Sensor Widget
                sensorWidget,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
