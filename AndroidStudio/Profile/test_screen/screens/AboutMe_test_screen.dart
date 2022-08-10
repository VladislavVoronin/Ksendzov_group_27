import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class AboutmeTestScreen {
  /// поле Surname на экране персональных данных
  static Finder aboutmeField = GeneralTestScreen.textField('Write a few words about yourself');


  /// кнопка перехода на следующий экран на экране персональных данных
  static Finder Save =
  find.widgetWithText(ElevatedButton, 'Save');


}

