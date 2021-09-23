import 'package:flutter/material.dart';
import 'package:flutter_interview_task/main.dart';
import 'package:flutter_interview_task/view/signup.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Flutter Widget Test", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var textField = find.byType(FlatButton);
    expect(textField, findsOneWidget);
    await tester.press(textField);
    expect(find.byType(FlatButton), findsOneWidget);
  });
}
