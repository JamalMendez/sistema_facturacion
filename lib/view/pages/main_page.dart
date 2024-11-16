import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/pages/client_page.dart';
import 'package:sistema_facturacion/view/widgets/menus/side_menu.dart';


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
          ClientPage(),
        ],
      ),
    );
  }
}
