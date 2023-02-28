import 'package:flutter/material.dart';

class RangeSelectorTextField extends StatelessWidget {
  const RangeSelectorTextField({
    Key? key,
    required this.labelText,
    required this.intValueSetter,
  }) : super(key: key);

  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText
      ),
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: false
      ),
      validator: (value) {
        if (value == null || value == "") {
          return "Field is required.";
        }

        if (int.tryParse(value, radix: 10) == null) {
          return "Not a number.";
        }

        return null;
      },
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? "")),
    );
  }
}
