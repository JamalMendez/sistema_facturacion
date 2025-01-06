import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class InputDropDown extends StatelessWidget {
  final String label;
  final List<DropDownValueModel> dropDownList;
  final bool isRequired;

  const InputDropDown({
    super.key,
    this.isRequired = false,
    required this.dropDownList,
    required this.label,
  });

  String? fieldRequired(String? value){
    if(value == null || value.isEmpty) return 'Por favor rellene el campo';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFA0C020),
            ),
          ),
          DropDownTextField(
            enableSearch: true,
            validator: isRequired ? (value) {
              return fieldRequired(value);
            } : null,
            textFieldDecoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
            dropDownList: dropDownList,
          ),
        ],
      ),
    );
  }
}
