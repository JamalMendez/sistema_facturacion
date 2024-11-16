import 'package:flutter/material.dart';

class TableTemplate extends StatefulWidget {
  final List<String> columns;
  final List<List<Object>> dataRow;

  const TableTemplate({
    super.key,
    required this.columns,
    required this.dataRow,
  });

  @override
  State<TableTemplate> createState() => _TableTemplateState();
}

class _TableTemplateState extends State<TableTemplate> {
  var listColumnTitleCell = <Widget>[];
  var listDataRow = <TableRow>[];
  var tableCellTextStyle = TextStyle(
    color: const Color(0xFF18843A),
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
  );

  Widget TableCellTemplate(Widget child) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: child,
        ),
      )
    );
  }

  void AddColumnTitleCell(String text) {
    listColumnTitleCell.add(
      TableCellTemplate(
        Text(
          text,
          style: tableCellTextStyle,
        )
      )
    );
  }

  void ListColumTitleCellSetter(){
    for(int i = 0; i < widget.columns.length; i++){
      AddColumnTitleCell(widget.columns[i]);
    }
    AddColumnTitleCell('Editar');
    AddColumnTitleCell('Generar PDF');
  }

  List<Widget> DataRowSetter(int position){
    List<Widget> row = [];

    for(int i = 0; i < widget.dataRow[position].length; i++){
      row.add(TableCellTemplate(Text(widget.dataRow[position][i].toString())));
    }

    row.add(TableCellTemplate(ElevatedButton(onPressed: (){print('elevated button');}, child: Text('Editar'))));
    row.add(TableCellTemplate(ElevatedButton(onPressed: (){print('elevated button');}, child: Text('Generar PDF'))));

    return row;
  }

  void ListDataRowSetter(){
    listDataRow.add(TableRow(children: listColumnTitleCell));

    for(int i = 0; i < widget.dataRow.length; i++){
      listDataRow.add(TableRow(children: DataRowSetter(i)));
    }
  }

  @override
  Widget build(BuildContext context) {
    listColumnTitleCell = [];
    listDataRow = [];

    ListColumTitleCellSetter();
    ListDataRowSetter();

    return Expanded(
      child: Container(
        height: double.infinity,
        child: Table(
          border: TableBorder.all(color: Colors.grey),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: listDataRow,
        ),
      ),
    );
  }
}
