import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/pages/main_page.dart';
import 'package:sistema_facturacion/view/widgets/buttons/generic_btn.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
    required this.onItemSelected,
  });


  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1E1E1E),
      height: MediaQuery.of(context).size.height,
      width: 250.0,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Image(
              image: AssetImage("assets/images/electro_logo.png"),
              width: 250.0,
              height: 100.0,
            ),
          ),
          const Spacer(),
          Column(
            children: [
              GenericButton(
                buttonText: "Factura",
                onPressed: (){
                  onItemSelected(0);
                },
              ),
              const SizedBox(height: 12,),
              GenericButton(
                buttonText: "Clientes",
                onPressed: (){
                  onItemSelected(1);
                },
              ),
              const SizedBox(height: 12,),
              GenericButton(
                buttonText: "Productos",
                onPressed: (){
                  onItemSelected(2);
                },
              ),
              const SizedBox(height: 12,),
              GenericButton(
                buttonText: "NCF",
                onPressed: (){
                  onItemSelected(3);
                },
              ),
            ],
          ),
          const SizedBox(height: 100,),
          const Spacer(),
        ],
      ),
    );
  }
}
