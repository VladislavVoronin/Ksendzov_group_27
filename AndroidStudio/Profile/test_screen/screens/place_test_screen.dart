import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class PlaceTestScreen {

  /// поле Place на экране персональных данных
  static Finder PlaceField = GeneralTestScreen.textField('Place of residence');

  /// кнопка выбора города на карте
  static Finder ListTiletap =
  find.widgetWithText(ListTile, 'Voronezh');

}