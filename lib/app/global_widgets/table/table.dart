import 'package:flutter/material.dart';
import 'package:sensor_management_service/app/global_widgets/table/datasource.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class WaterOSTable extends StatelessWidget {
  WaterOSTable({Key? key, required this.edgeDeviceDataSource, this.list})
      : super(key: key);

  final EdgeDeviceDataSource edgeDeviceDataSource;
  final List<String>? list;

  List<GridColumn> createColumns(List<String>? list) {
    if (list == null) {
      return [];
    }
    List<GridColumn> result = [];
    GridColumn item;
    for (var element in list) {
      item = GridColumn(
          columnName: element,
          label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                element,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )));
      result.add(item);
    }

    return result;
  }

  final DataGridController _dataGridController = DataGridController();
  DataGridController getDataGridController() {
    // _dataGridController.selectedRows
    //     .add(edgeDeviceDataSource.);

    return _dataGridController;
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGridTheme(
      data: SfDataGridThemeData(
        headerColor: Colors.white,
        selectionColor: const Color(0xffDEEBFF),
        rowHoverColor: const Color(0xffDEEBFF),
      ),
      child: SfDataGrid(
        columnWidthMode: ColumnWidthMode.fill,
        rowsPerPage: 10,
        verticalScrollPhysics: const NeverScrollableScrollPhysics(),
        selectionMode: SelectionMode.multiple,
        showCheckboxColumn: true,
        allowSorting: true,
        allowMultiColumnSorting: true,
        allowTriStateSorting: true,
        allowColumnsResizing: true,
        onSelectionChanged: (a, b) {},
        gridLinesVisibility: GridLinesVisibility.both,
        headerGridLinesVisibility: GridLinesVisibility.both,
        source: edgeDeviceDataSource,
        controller: getDataGridController(),
        columns: createColumns(list),
      ),
    );
  }
}

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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 1, // soften the shadow
            spreadRadius: 1, //extend the shadow
            offset: Offset(
              2, // Move to right 10  horizontally
              1, // Move to bottom 10 Vertically
            ),
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
    );
  }
}
