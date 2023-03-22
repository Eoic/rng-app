import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_number_generator/randomizer_change_notifier.dart';
import 'range_selector_page.dart';

void main() {
  runApp(const Randomizer());
}

final randomizerProvider = ChangeNotifierProvider((ref) => RandomizerChangeNotifier());

class Randomizer extends StatelessWidget {
  const Randomizer({ super.key });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
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
