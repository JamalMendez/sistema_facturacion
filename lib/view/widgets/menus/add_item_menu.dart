import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sistema_facturacion/view/widgets/buttons/accept_delete_btn.dart';
import 'package:sistema_facturacion/view/widgets/buttons/quit_btn.dart';

class AddItemMenu extends StatefulWidget {
  final String titleMenu;
  final List<Widget> widgetItems;

  AddItemMenu({
    super.key,
    required this.titleMenu,
    required this.widgetItems,
  });

  @override
  State<AddItemMenu> createState() => _AddItemMenuState();
}

class _AddItemMenuState extends State<AddItemMenu> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1E1E1E),
      height: MediaQuery.of(context).size.height,
      width: 350.0,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            Container(
              child: QuitButton(),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(5),
            ),
            SizedBox(height: 15),
            Text(
              widget.titleMenu,
              style: TextStyle(
                color: const Color(0xFF18843A),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Insertar el Scrollbar aquí
            Expanded(
              child: RawScrollbar(
                controller: controller,
                thumbVisibility: true,
                radius: Radius.circular(10),
                thickness: 6.0,
                thumbColor: Colors.greenAccent,
                child: SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: widget.widgetItems,
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  AcceptDeleteButton(),
                  Spacer(),
                  AcceptDeleteButton(isDelete: true),
                ],
              ),
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
