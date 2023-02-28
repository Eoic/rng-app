import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_generator/randomizer_change_notifier.dart';
import 'range_selector_page.dart';

void main() {
  runApp(const Randomizer());
}

class Randomizer extends StatelessWidget {
  const Randomizer({ super.key });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomizerChangeNotifier(),
      child: MaterialApp(
        title: "Randomizer",
        home: RangeSelectorPage(key: const Key("RSP")),
        theme: ThemeData.dark(useMaterial3: true).copyWith(
          colorScheme: const ColorScheme.dark().copyWith(secondary: Colors.deepPurple)
        ),
      ),
    );
  }
}
