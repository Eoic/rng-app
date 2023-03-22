import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_number_generator/main.dart';
import "range_selector_text_field.dart";

typedef IntValueSetter = void Function(int);

class RangeSelectorForm extends ConsumerWidget {
  const RangeSelectorForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextField(
              labelText: "Minimum",
              intValueSetter: (value) => ref.read(randomizerProvider).min = value,
            ),
            const SizedBox(
                height: 12
            ),
            RangeSelectorTextField(
              labelText: "Maximum",
              intValueSetter: (value) => ref.read(randomizerProvider).max = value,
            )
          ],
        ),
      ),
    );
  }
}