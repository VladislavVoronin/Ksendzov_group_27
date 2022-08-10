

import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


import '../../test_screen/test_screen_library.dart';

abstract class InterestsStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
    when1<String, FlutterWidgetTesterWorld>(
      RegExp(r'Я выбираю {string} из интересов$'),
          (Art, context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        await tester.tap(InterestsTestScreen.CheckboxArt);
      },
    ),
  ];
}