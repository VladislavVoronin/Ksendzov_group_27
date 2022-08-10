
import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


import '../../test_screen/screens/profile_test_screen.dart';
import '../../test_screen/screens/place_test_screen.dart';

abstract class PlaceStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
   when1<String, FlutterWidgetTesterWorld>(
      RegExp(r'Я выбираю город {string}$'),
          (place, context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        await tester.enterText(ProfileTestScreen.PlaceField, place);
        await tester.pumpAndSettle();
        await tester.tap(PlaceTestScreen.ListTiletap);
        await tester.pump();
      },
    ),


  ];
}