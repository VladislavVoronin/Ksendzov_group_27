import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class InterestsTestScreen {

  /// Чекбокс Flowers на экране интересов
  static Finder CheckboxArt =
      find.ancestor(of: find.text('Art'), matching: find.byType(Padding));

}