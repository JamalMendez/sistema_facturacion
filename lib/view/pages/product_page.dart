import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/widgets/table_template.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35.0,
        color: const Color(0xFF18843A)
    );

    return Expanded(
      child: Container(
        height: double.infinity,
        child:  Column(
          children: [
            Text(
              'Productos',
              style: textStyle,
            ),
            SizedBox(height: 20.0,),
            TableTemplate(
              columns: <String>['pepe', 'papa', 'popa'],
              dataRow: <List<Object>>[['pepe', 1, 'popa'],['pepe', 43.43, 'popa'],[Null, 'papa', 'popa'],['pepe', true, 'popa'],['pepe', 'papa', 'popa'],['pepe', 'papa', 'popa']],
            ),
          ],
        ),
      ),
    );
  }
}
