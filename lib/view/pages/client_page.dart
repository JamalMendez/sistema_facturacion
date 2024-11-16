import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/widgets/buttons/generic_btn.dart';

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
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Clientes',
                    style: textStyle,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                GenericButton(
                  buttonText:   'Registrar Cliente',
                  buttonColor: const Color(0xFF18843A),
                  hoverColor: const Color(0xFFA0C020),
                  isTitle: true,
                  onPressed: (){
                    print('Crear');
                  }
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
