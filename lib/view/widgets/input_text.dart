import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatefulWidget {
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

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  String? fieldRequired(String? value){
    if(value == null || value.isEmpty) return 'Por favor rellene el campo';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    TextInputType inputType = TextInputType.text;
    List<TextInputFormatter> listTextInputFormatter = [];

    if(widget.isOnlyNumber){
      inputType = TextInputType.number;
      listTextInputFormatter.add(FilteringTextInputFormatter.digitsOnly);
    }

    return Container(
      width: 300.0,
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              color: Color(0xFFA0C020),
            ),
          ),
          TextFormField(
            keyboardType: inputType,
            inputFormatters: listTextInputFormatter,
            maxLength: widget.maxLengths,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              filled: true,
              counterText: "",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
            validator: widget.isRequired ? (value) {
              return fieldRequired(value);
            } : null,
          ),
        ],
      ),
    );
  }
}
