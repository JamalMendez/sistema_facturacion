import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/widgets/buttons/generic_btn.dart';
import 'package:sistema_facturacion/view/widgets/input_drop_down.dart';
import 'package:sistema_facturacion/view/widgets/input_text.dart';
import 'package:sistema_facturacion/view/widgets/menus/forms.dart';
import 'package:sistema_facturacion/view/widgets/table_template.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 35.0, color: Color(0xFF18843A));

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Productos',
                  style: textStyle,
                ),
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
              const Spacer(),
              const Spacer(),
              Row(
                children: [
                  GenericButton(
                      buttonText: 'Registrar Producto',
                      buttonColor: const Color(0xFF18843A),
                      hoverColor: const Color(0xFFA0C020),
                      isTitle: true,
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierColor: Colors.black.withOpacity(0.5),
                          builder: (BuildContext context) {
                            return const Align(
                                alignment: Alignment.centerRight,
                                child: Material(
                                  color: Colors.white,
                                  child: Forms(
                                      titleMenu: 'Formulario Del Producto',
                                      widgetItems: [
                                        InputText(
                                          label: 'Costo',
                                          isOnlyNumber: true,
                                          isRequired: true,
                                        ),
                                        InputText(
                                          label: 'Descripcion',
                                          isRequired: true,
                                        ),
                                        InputDropDown(
                                            dropDownList: <DropDownValueModel>[
                                              DropDownValueModel(
                                                  name: 'name1',
                                                  value: 'value1'),
                                              DropDownValueModel(
                                                  name: 'name2',
                                                  value: 'value2'),
                                              DropDownValueModel(
                                                  name: 'name3',
                                                  value: 'value3')
                                            ],
                                            label: 'Tipo del producto')
                                      ]),
                                ));
                          },
                        );
                      }),
                  const SizedBox(
                    width: 10.0,
                  ),
                  GenericButton(
                      buttonText: 'Registrar Tipo',
                      buttonColor: const Color(0xFF18843A),
                      hoverColor: const Color(0xFFA0C020),
                      isTitle: true,
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierColor: Colors.black.withOpacity(0.5),
                          builder: (BuildContext context) {
                            return const Align(
                                alignment: Alignment.centerRight,
                                child: Material(
                                  color: Colors.white,
                                  child: Forms(
                                      titleMenu: 'Formulario del Producto',
                                      widgetItems: [
                                        InputText(
                                          label: 'Nombre del tipo de producto',
                                          isRequired: true,
                                        ),
                                      ]),
                                ));
                          },
                        );
                      })
                ],
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
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
