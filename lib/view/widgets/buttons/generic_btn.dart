import 'package:flutter/material.dart';

class GenericButton extends StatefulWidget {
  const GenericButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.buttonColor = const Color(0xFF1E1E1E),
    this.hoverColor = const Color(0xFF18843A),
    this.isTitle = false,
  });

  final Function() onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color hoverColor;
  final bool isTitle;

  @override
  State<GenericButton> createState() => _GenericButtonState();
}

class _GenericButtonState extends State<GenericButton> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      color: Colors.white,
    );

    if(widget.isTitle){
      textStyle = const TextStyle(
          color: Colors.white,
          fontSize: 19.0,
          fontWeight: FontWeight.bold,
          height: 2.5,
      );
    }

    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.hovered)) {
            return widget.hoverColor;
          }
          return widget.buttonColor;
        }),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
          return RoundedRectangleBorder(borderRadius: BorderRadius.circular(5));
        }),
        elevation: WidgetStateProperty.resolveWith<double>((states) {
            return 0.0;
        }),
        fixedSize: WidgetStateProperty.resolveWith<Size>((states) {
            return const Size.fromWidth(200);
        }),
      ),
      child: Text(
        widget.buttonText,
        style: textStyle,
      ),
    );
  }
}
