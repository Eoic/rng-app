import "package:flutter/material.dart";
import "range_selector_text_field.dart";

typedef IntValueSetter = void Function(int);

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm({
    Key? key,
    required this.formKey,
    required this.setMinValue,
    required this.setMaxValue,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final IntValueSetter setMinValue;
  final IntValueSetter setMaxValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextField(
              labelText: "Minimum",
              intValueSetter: setMinValue,
            ),
            const SizedBox(
                height: 12
            ),
            RangeSelectorTextField(
              labelText: "Maximum",
              intValueSetter: setMaxValue,
            )
          ],
        ),
      ),
    );
  }
}