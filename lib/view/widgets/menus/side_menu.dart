import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/widgets/buttons/menu_btn.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1E1E1E),
      height: MediaQuery.of(context).size.height,
      width: 250.0,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage("assets/images/electro_logo.png"),
              width: 250.0,
              height: 100.0,
            ),
          ),
          Spacer(),
          Column(
            children: [
              MenuButton(buttonText: "Factura"),
              SizedBox(height: 12,),
              MenuButton(buttonText: "Clientes"),
              SizedBox(height: 12,),
              MenuButton(buttonText: "Productos"),
              SizedBox(height: 12,),
              MenuButton(buttonText: "Tipo de pago y NCF"),
            ],
          ),
          SizedBox(height: 100,),
          Spacer(),
        ],
      ),
    );
  }
}
