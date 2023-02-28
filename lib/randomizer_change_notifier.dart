import 'dart:math';
import 'package:flutter/foundation.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();

  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;

  int min = 0;
  int max = 0;

  void generateRandomNumber() {
    _generatedNumber = _randomGenerator.nextInt(max - min + 1) + min;
    notifyListeners();
  }
}