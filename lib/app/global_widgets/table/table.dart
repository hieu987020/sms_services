import 'package:flutter/material.dart';
import 'package:sensor_management_service/app/global_widgets/table/datasource.dart';
import 'package:sensor_management_service/app/data/enums/enums.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class WaterOSTable extends StatelessWidget {
  WaterOSTable({
    Key? key,
    required this.edgeDeviceDataSource,
    this.list,
  }) : super(key: key);

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
