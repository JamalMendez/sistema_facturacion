import 'package:flutter/material.dart';

import '../widgets/table_template.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35.0,
        color: Color(0xFF18843A)
    );

    return Expanded(
      child: SizedBox(
        height: double.infinity,
        child:  Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Clientes',
                    style: textStyle,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 10.0,),
            const TableTemplate(
              columns: <String>['pepe', 'papa', 'popa'],
              dataRow: <List<Object>>[
                ['pepe', 1, 'popa'],
                ['pepe', 43.43, 'popa'],
                [Null, 'papa', 'popa'],
                ['pepe', true, 'popa'],
                ['pepe', 'papa', 'popa'],
                ['pepe', 'papa', 'popa'],
                ['pepe', 'papa', 'popa'],
                ['pepe', 'papa', 'popa'],
                ['pepe', 'papa', 'popa'],
                ['pepe', 'papa', 'popa']
              ],
            ),
          ],
        ),
      ),
    );
  }
}
