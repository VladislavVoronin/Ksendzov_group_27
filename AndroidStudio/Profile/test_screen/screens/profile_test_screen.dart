import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'general_test_screen.dart';

abstract class ProfileTestScreen {
  /// поле Surname на экране персональных данных
  static Finder surnameField = GeneralTestScreen.textField('Surname');

  /// поле Birthday на экране персональных данных
  static Finder birthdayField = GeneralTestScreen.textField('Birthday');

  /// поле Name на экране персональных данных
  static Finder nameField = GeneralTestScreen.textField('Name');

  /// поле SecondName на экране персональных данных
  static Finder secondnameField = GeneralTestScreen.textField('SecondName');

  /// кнопка перехода на следующий экран на экране персональных данных
  static Finder navigatenext =
  find.widgetWithIcon(ElevatedButton, Icons.navigate_next);

  /// поле Place на экране персональных данных
  static Finder PlaceField = GeneralTestScreen.textField('Place of residence');
}
