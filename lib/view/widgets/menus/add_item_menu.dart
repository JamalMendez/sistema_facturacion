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
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(5),
              child: const QuitButton(),
            ),
            const SizedBox(height: 15),
            Text(
              widget.titleMenu,
              style: const TextStyle(
                color: Color(0xFF18843A),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: RawScrollbar(
                controller: controller,
                thumbVisibility: true,
                radius: const Radius.circular(10),
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
              padding: const EdgeInsets.all(10),
              child: const Row(
                children: [
                  AcceptDeleteButton(),
                  Spacer(),
                  AcceptDeleteButton(isDelete: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
