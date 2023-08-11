// ignore_for_file: lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:show_characters_viewer/app/view/app.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart';

class MockDio extends Mock implements Dio {}

class MockCharacterRepository extends Mock implements CharacterRepository {}

class MockDeviceService extends Mock implements DeviceService {
  MockDeviceService({this.returnValue});
  bool? returnValue;

  @override
  bool isMobileDevice() {
    return returnValue ?? false;
  }
}

void main() {
  final mockRepository = MockCharacterRepository();
  final mockDeviceServiceMobile = MockDeviceService(returnValue: true);
  final mockDeviceServiceTablet = MockDeviceService(returnValue: false);

  group('DeviceLayout tests', () {
    Widget buildTestApp(MockDeviceService service) {
      return ProviderScope(
        overrides: [
          repositoryProvider.overrideWithValue(mockRepository),
          deviceServiceProvider.overrideWithValue(service),
        ],
        child: const MaterialApp(
          home: App(),
        ),
      );
    }

    testWidgets('Renders correctly on Mobile', (tester) async {
      await tester.pumpWidget(buildTestApp(mockDeviceServiceMobile));

      expect(
        find.byType(Home),
        findsOneWidget,
      );
    });

    testWidgets('Renders correctly on Tablet', (tester) async {
      await tester.pumpWidget(buildTestApp(mockDeviceServiceTablet));

      expect(
        find.byType(TabletLayout),
        findsOneWidget,
      );
    });
  });
}
