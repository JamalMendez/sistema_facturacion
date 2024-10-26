import 'package:flutter/material.dart';
import 'package:sistema_facturacion/widgets/buttons/menu_btn.dart';
import 'package:sistema_facturacion/widgets/menus/side_menu.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          SideMenu(),
        ],
      ),
    );
  }
}
