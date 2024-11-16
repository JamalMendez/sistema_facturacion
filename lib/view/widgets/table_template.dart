import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/widgets/buttons/generic_btn.dart';

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
  Color darkGreen = const Color(0xFF18843A);
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
    Color buttonColor = Colors.grey;

    for(int i = 0; i < widget.dataRow[position].length; i++){
      row.add(TableCellTemplate(Text(widget.dataRow[position][i].toString())));
    }

    row.add(TableCellTemplate(GenericButton(
      buttonText: 'Editar',
      buttonColor: const Color(0xFF18843A),
      hoverColor: const Color(0xFFA0C020),
      onPressed: (){
        print('Editar');
      }
    )));
    row.add(TableCellTemplate(GenericButton(
      buttonText: 'Generar PDF',
      buttonColor: const Color(0xFF18843A),
      hoverColor: const Color(0xFFA0C020),
      onPressed: (){
        print('Generar PDF');
      }
    )));

    return row;
  }

  void ListDataRowSetter(){
    listDataRow.add(
      TableRow(
        children: listColumnTitleCell,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: darkGreen,
                width: 4.0,
              )
          )
        )
      )
    );

    for(int i = 0; i < widget.dataRow.length; i++){
      listDataRow.add(TableRow(children: DataRowSetter(i)));
    }
  }

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    listColumnTitleCell = [];
    listDataRow = [];

    ListColumTitleCellSetter();
    ListDataRowSetter();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: double.infinity,
          child: RawScrollbar(
            controller: controller,
            thumbVisibility: true,
            radius: Radius.circular(10),
            thickness: 6.0,
            thumbColor: Colors.greenAccent,
            child: SingleChildScrollView(
              controller: controller,
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: listDataRow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
