

import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


import '../../test_screen/screens/profile_test_screen.dart';

abstract class ProfileStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю фамилию {string}$'),
          (surname, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(ProfileTestScreen.surnameField, surname);
            await tester.pump();
          },
        ),
        when1<String, FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю имя {string}$'),
          (name, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(ProfileTestScreen.nameField, name);
            await tester.pump();
          },
        ),
    when1<String, FlutterWidgetTesterWorld>(
      RegExp(r'Я указываю отчество {string}$'),
          (secondname, context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        await tester.enterText(ProfileTestScreen.secondnameField, secondname);
        await tester.pump();
      },
    ),
    when1<String, FlutterWidgetTesterWorld>(
      RegExp(r'Я указываю дату рождения {string}$'),
          (birthdate, context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        tester
            .widget<TextField>(ProfileTestScreen.birthdayField)
            .controller
            ?.text = birthdate;
        await tester.pump();
      },
    ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я перехожу далее$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.tap(ProfileTestScreen.navigatenext);
      },
    ),
   ];
}
