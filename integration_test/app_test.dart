import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
// The application under test.
import 'package:parkway_projects_task/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the signup button; verify home loaded',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Finds the floating action button to tap on.
      final Finder onboardingButton = find.byKey(const ValueKey('joinKey'));
      await tester.tap(onboardingButton);

      await tester.pumpAndSettle();

      // Finds the floating action button to tap on.
      final Finder signUpButton = find.byKey(const ValueKey('signUpButton'));

      // Emulate a tap on the floating action button.
      await tester.tap(signUpButton);

      await tester.pumpAndSettle();

      expect(find.text('Home'), findsWidgets);
    });
  });
}
