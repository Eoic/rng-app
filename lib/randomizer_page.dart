import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_generator/randomizer_change_notifier.dart';

class RandomizerPage extends StatelessWidget {
  final randomGenerator = Random();

  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Consumer<RandomizerChangeNotifier>(
            builder: (context, notifier, child) {
              return Text("Randomizer [${notifier.min}, ${notifier.max}]",);
            }
          )
      ),
      body: Center(
        child: Consumer<RandomizerChangeNotifier>(
          builder: (context, notifier, child) {
            return Text(
              notifier.generatedNumber?.toString() ?? 'Generate a number.',
              style: const TextStyle(
                  fontSize: 36,
                  color: Colors.white70
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read<RandomizerChangeNotifier>().generateRandomNumber(),
        label: const Text('Generate'),
        foregroundColor: Colors.white70,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}