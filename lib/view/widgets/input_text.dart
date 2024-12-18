import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatelessWidget {
  final bool isRequired;
  final int maxLines;
  final int? maxLengths;
  final String label;
  final bool isOnlyNumber;

  const InputText({
    super.key,
    required this.label,
    this.isRequired = false,
    this.maxLines = 1,
    this.isOnlyNumber = false,
    this.maxLengths,
  });

  String? FieldRequired(String? value){
    if(value == null || value.isEmpty) return 'Por favor rellene el campo';
    return null;
  }


  @override
  Widget build(BuildContext context) {
    TextInputType inputType = TextInputType.text;
    List<TextInputFormatter> listTextInputFormatter = [];

    if(isOnlyNumber){
      inputType = TextInputType.number;
      listTextInputFormatter.add(FilteringTextInputFormatter.digitsOnly);
    }

    return Container(
      width: 300.0,
      padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFA0C020),
            ),
          ),
          TextFormField(
            keyboardType: inputType,
            inputFormatters: listTextInputFormatter,
            maxLength: maxLengths,
            maxLines: maxLines,
            style: TextStyle(
              height: 0.80,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
            validator: (value){
              if(isRequired) FieldRequired(value);
            },
          ),
        ],
      ),
    );
  }
}
