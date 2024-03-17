import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsDataTable extends StatelessWidget {
  const DlsDataTable({
    super.key,
    this.columns = const [],
    this.rows = const [],
    this.headingRowHeight,
    this.showCheckboxColumn = false,
    this.dividerColor,
  });

  final List<DataColumn> columns;
  final List<DataRow> rows;
  final double? headingRowHeight;
  final bool showCheckboxColumn;
  final Color? dividerColor;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: dividerColor ?? Colors.transparent,
      ),
      child: DataTable(
        columnSpacing: 0,
        horizontalMargin: 8.w,
        dataRowHeight: 40.h,
        dividerThickness: 0,
        headingRowHeight: headingRowHeight ?? 32.h,
        headingTextStyle: context.ts_s12h14w400.copyWith(
          color: context.c_placeholder,
        ),
        columns: columns,
        rows: rows,
        showCheckboxColumn: showCheckboxColumn,
      ),
    );
  }
}
