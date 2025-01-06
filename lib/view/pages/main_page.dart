import 'package:flutter/material.dart';
import 'package:sistema_facturacion/view/pages/bill_page.dart';
import 'package:sistema_facturacion/view/pages/client_page.dart';
import 'package:sistema_facturacion/view/pages/ncf_page.dart';
import 'package:sistema_facturacion/view/pages/product_page.dart';
import 'package:sistema_facturacion/view/widgets/menus/side_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  final List<Widget> _pagesList = [
    const BillPage(),
    const ClientPage(),
    const ProductPage(),
    const NCFPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(
            onItemSelected: (int newIndex) {
              setState(() {
                _index = newIndex;
              });
            },
          ),
          Expanded(child: _pagesList[_index]),
        ],
      ),
    );
  }
}
