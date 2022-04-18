// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sensor_management_service/app/global_widgets/global_widgets.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/controller/controller.dart';
import 'package:sensor_management_service/app/modules/SMSEdgeDevice/local_widgets/edge_device_table.dart';
import 'package:sensor_management_service/edge_device.dart';
import 'package:sensor_management_service/sensor_widget.dart';

// ignore: must_be_immutable
class SMSEdgeDeviceView extends GetView<SMSEdgeDeviceController> {
  List<EdgeDevice> edgeDevices = [];

  @override
  Widget build(BuildContext context) {
    controller.getEdgeDeviceData();
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
                Obx(
                  () => Expanded(
                      child: EdgeDeviceTable(
                          edgeDeviceDataSource:
                              controller.edgeDeviceDataSource.value)),
                ),
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
