import 'package:flutter/material.dart';
import 'range_selector_page.dart';

void main() {
  runApp(const Randomizer());
}

class Randomizer extends StatelessWidget {
  const Randomizer({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Randomizer",
      home: RangeSelectorPage(key: const Key("RSP")),
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: const ColorScheme.dark().copyWith(secondary: Colors.deepPurple)
      ),
    );
  }
}
