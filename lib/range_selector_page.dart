import "package:flutter/material.dart";
import 'package:random_number_generator/randomizer_page.dart';
import "range_selector_form.dart";

class RangeSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RangeSelectorPage({ required Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RandomizerPage()));
          }
        },
        foregroundColor: Colors.white70,
        child: const Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}