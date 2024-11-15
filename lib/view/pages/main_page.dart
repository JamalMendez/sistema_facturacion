import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/widgets/menus/side_menu.dart';
import 'package:sistema_facturacion/view/widgets/table_template.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(),
          TableTemplate(columns: <String>['pepe', 'papa', 'popa']),
        ],
      ),
    );
  }
}
