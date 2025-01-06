import 'package:flutter/material.dart';

class AcceptDeleteButton extends StatelessWidget {

  final bool isDelete;
  final void Function()? onPressed;

  const AcceptDeleteButton({
    super.key,
    this.isDelete = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    String buttonText = 'Aceptar';
    Color buttonColor = Color(0xFF18843A);

    if(isDelete){
      buttonText = 'Eliminar';
      buttonColor = Colors.red;
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: Size(110.0, 45.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}
