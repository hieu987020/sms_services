import 'package:flutter/material.dart';
import 'package:sensor_management_service/edge_device.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// An object to set the edgeDevice collection data source to the datagrid. This
/// is used to map the edgeDevice data to the datagrid widget.
class EdgeDeviceDataSource extends DataGridSource {
  /// Creates the edgeDevice data source class with required details.
  EdgeDeviceDataSource({required List<EdgeDevice> edgeDeviceData}) {
    _edgeDeviceData = edgeDeviceData.map<DataGridRow>(
      (e) {
        return DataGridRow(
          cells: [
            DataGridCell<String>(
                columnName: ConstLabel.DEVICE_ID, value: e.deviceId),
            DataGridCell<String>(
                columnName: ConstLabel.DEVICE_TYPE, value: e.deviceType),
            DataGridCell<String>(
                columnName: ConstLabel.OWNER_ID, value: e.ownerId),
            DataGridCell<String>(
                columnName: ConstLabel.ZONE_ID, value: e.zoneId),
            DataGridCell<String>(
                columnName: ConstLabel.RECEIVER_ID, value: e.receiverId),
            DataGridCell<String>(columnName: ConstLabel.STATE, value: e.state),
            DataGridCell<String>(
                columnName: ConstLabel.LAST_UPDATED, value: e.lastUpdated),
          ],
        );
      },
    ).toList();
  }

  List<DataGridRow> _edgeDeviceData = [];
  @override
  List<DataGridRow> get rows => _edgeDeviceData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final int rowIndex = _edgeDeviceData.indexOf(row);
    Color backgroundColor = const Color(0xffF9F9F9); //404040
    if ((rowIndex % 2) == 0) {
      backgroundColor = Colors.white;
    }
    return DataGridRowAdapter(
        color: backgroundColor,
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }
}
