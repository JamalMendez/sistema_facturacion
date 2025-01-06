import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/widgets/buttons/generic_btn.dart';
import 'package:sistema_facturacion/view/widgets/input_text.dart';
import 'package:sistema_facturacion/view/widgets/menus/forms.dart';
import '../widgets/table_template.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  bool isEnterprise = false;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35.0,
        color: Color(0xFF18843A)
    );

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
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
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierColor: Colors.black.withOpacity(0.5),
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return Align(
                              alignment: Alignment.centerRight,
                              child: Material(
                                color: Colors.white,
                                child: Forms(
                                    titleMenu: 'Formulario Del Cliente',
                                    widgetItems: [
                                      GenericButton(
                                          buttonText: 'Es empresa: ${isEnterprise ? 'Si' : 'No'}',
                                          onPressed: () {
                                            setState(() {
                                              isEnterprise = !isEnterprise;
                                            });
                                          }),
                                      InputText(label: isEnterprise ? 'RNC' : 'Cedula', maxLengths: isEnterprise ? 8 : 11, isOnlyNumber: true, isRequired: true,),
                                      const InputText(label: 'Nombre Completo', isRequired: true,),
                                      const InputText(label: 'Email'),
                                      const InputText(label: 'Direccion', maxLines: 3, isOnlyNumber: true,),
                                      const InputText(label: 'Celular', maxLengths: 10, isOnlyNumber: true,),
                                      const InputText(label: 'Telefono', maxLengths: 10,isOnlyNumber: true,),
                                    ]
                                ),
                              )
                          );
                        },
                      );
                    },
                  );
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
    );
  }
}
