import 'package:flutter/material.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:sensor_management_service/app/global_widgets/global_widgets.dart';
import 'package:sensor_management_service/app/global_widgets/table/datasource.dart';

class EdgeDeviceTable extends StatelessWidget {
  const EdgeDeviceTable({
    Key? key,
    required this.edgeDeviceDataSource,
  }) : super(key: key);

  final EdgeDeviceDataSource edgeDeviceDataSource;

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      ConstLabel.DEVICE_ID,
      ConstLabel.DEVICE_TYPE,
      ConstLabel.OWNER_ID,
      ConstLabel.ZONE_ID,
      ConstLabel.RECEIVER_ID,
      ConstLabel.STATE,
      ConstLabel.LAST_UPDATED,
    ];

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(2, 1),
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SizedBox(
                      height: 76,
                      child: Center(child: Text("EDGE DEVICE TABLES "))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                      height: 36,
                      width: 96,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("New"))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 700,
                child: WaterOSTable(
                    edgeDeviceDataSource: edgeDeviceDataSource, list: list),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
