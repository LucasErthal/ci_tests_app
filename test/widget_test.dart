// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:ci_tests_app/main.dart';

void main() {
  testWidgets('Should able to find both buttons text',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FirstWidget());

    final button1Text = find.text('Botão 1');
    final button2Text = find.text('Botão 2');

    await tester.tap(button1Text);
    await tester.tap(button2Text);

    expect(button1Text, findsOneWidget);
    expect(button2Text, findsOneWidget);
  });
}
