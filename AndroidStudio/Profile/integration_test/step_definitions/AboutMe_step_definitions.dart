

import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


import '../../test_screen/test_screen_library.dart';

abstract class AboutMeStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
    when1<String, FlutterWidgetTesterWorld>(
      RegExp(r'Я заполняю заметку о себе {string}$'),
          (aboutme, context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        await tester.enterText(AboutmeTestScreen.aboutmeField, aboutme);
        await tester.pump();
      },
    ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я сохраняю результат$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.tap(AboutmeTestScreen.Save);
      },
    ),
  ];
}