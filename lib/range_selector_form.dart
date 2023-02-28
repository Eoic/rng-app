import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:random_number_generator/randomizer_change_notifier.dart';
import "range_selector_text_field.dart";

typedef IntValueSetter = void Function(int);

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

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
              intValueSetter: (value) => context.read<RandomizerChangeNotifier>().min = value,
            ),
            const SizedBox(
                height: 12
            ),
            RangeSelectorTextField(
              labelText: "Maximum",
              intValueSetter: (value) => context.read<RandomizerChangeNotifier>().max = value,
            )
          ],
        ),
      ),
    );
  }
}