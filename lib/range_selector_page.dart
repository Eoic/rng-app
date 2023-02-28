import "package:flutter/material.dart";
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:random_number_generator/randomizer_page.dart';
import "range_selector_form.dart";

class RangeSelectorPage extends HookWidget {
  final formKey = GlobalKey<FormState>();

  RangeSelectorPage({ required Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Select range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        setMinValue: (value) => min.value = value,
        setMaxValue: (value) => max.value = value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RandomizerPage(min: min.value, max: max.value)));
          }
        },
        foregroundColor: Colors.white70,
        child: const Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}