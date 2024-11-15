import 'package:flutter/material.dart';

class TableTemplate extends StatefulWidget {
  final List<String> columns;

  const TableTemplate({
    super.key,
    required this.columns
  });

  @override
  State<TableTemplate> createState() => _TableTemplateState();
}

class _TableTemplateState extends State<TableTemplate> {

    List<Widget> SetTableColumnTitle(){
      var list = <Widget>[];
      
      for(int i = 0; i < widget.columns.length; i++){
        list.add(
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(widget.columns[i]),
            )
          )
        );
      }

      return list;
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 400.0,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: SetTableColumnTitle(),
          )
        ],
      ),
    );
  }
}
