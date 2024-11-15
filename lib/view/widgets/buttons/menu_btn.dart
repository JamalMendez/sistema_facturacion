import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        print("object");
      },
      child: Text(
        widget.buttonText,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.hovered)) {
            return Color(0xFF18843A); // Mismo color que en estado normal
          }
          return Color(0xFF1E1E1E); // Color normal del botón
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
          return RoundedRectangleBorder(borderRadius: BorderRadius.circular(5));
        }),
        elevation: MaterialStateProperty.resolveWith<double>((states) {
            return 0.0;
        }),
        fixedSize: MaterialStateProperty.resolveWith<Size>((states) {
            return Size.fromWidth(200);
        }),
      ),
    );
  }
}
