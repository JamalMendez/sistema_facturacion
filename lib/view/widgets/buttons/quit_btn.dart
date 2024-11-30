import 'package:flutter/material.dart';

class QuitButton extends StatelessWidget {
  const QuitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pop(context),
      child: Icon(
        Icons.close,
        color: Colors.white,
        size: 20,
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
      ),
    );
  }
}
