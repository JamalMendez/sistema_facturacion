import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final bool isRequired;
  final int maxLines;
  final String label;

  const InputText({
    super.key,
    required this.label,
    this.isRequired = false,
    this.maxLines = 1,
  });

  String? FieldRequired(String? value){
    if(value == null || value.isEmpty) return 'Por favor rellene el campo';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 300.0,
      child: Center(
        child: TextFormField(
          maxLines: maxLines,
          decoration: InputDecoration(
            labelText: label,
            filled: true,
            fillColor: Colors.white,
            labelStyle: const TextStyle(
              color: Color(0xFFA0C020),
              backgroundColor: Colors.white,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
          ),
          validator: (value){
            if(isRequired) FieldRequired(value);
          },
        ),
      ),
    );
  }
}
