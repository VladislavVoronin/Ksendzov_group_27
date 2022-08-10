

import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';


import '../../test_screen/test_screen_library.dart';

abstract class CheckStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я перехожу к сохраненному профилю$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        await tester.tap(MainTestScreen.editProfileBtn);
      },
    ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я вижу заполненные поля ФИО$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        expect(find.text('Voronin'), findsOneWidget);
        expect(find.text('Vladislav'), findsOneWidget);
        expect(find.text('Vyacheslavovich'), findsOneWidget);
      },
    ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я вижу заполненное поле даты рождения$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        expect(find.text('1997-10-17'), findsOneWidget);
      },
    ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я вижу заполненное поле города$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        expect(find.text('Voronezh'), findsOneWidget);
      },
    ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я вижу выбранные интересы$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
      },
    ),
    when<FlutterWidgetTesterWorld>(
      RegExp(r'Я вижу заполненное поле заметки о себе$'),
          (context) async {
        final tester = context.world.rawAppDriver;
        await tester.pumpAndSettle();
        expect(find.text('Тестовая заметка о себе'), findsOneWidget);
      },
    ),
  ];
}