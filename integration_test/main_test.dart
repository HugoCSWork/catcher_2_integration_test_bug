import 'package:catcher_2/catcher_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test_defect/main.dart';

void main() {
  group('App should', () {
    testWidgets('Show two when floating action button is pressed twice', (tester) async {
      // Given
      Catcher2(runAppFunction: () => const MyApp());

      // When
      await tester.tap(find.byKey(const Key('increment_floating_button')));
      await tester.pumpAndSettle();

      // Then
      final valueText = tester.firstWidget<Text>(find.byKey(const Key('number_value_text')));
      expect(valueText.data, "2"); // Will fail the test as we only press it once
    });
  });
}
