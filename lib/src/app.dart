import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:parkway_projects_task/src/app_theme.dart';
import 'package:parkway_projects_task/src/chat/chat_detail.dart';
import 'package:parkway_projects_task/src/onboarding/onboarding.dart';
import 'package:parkway_projects_task/src/root_page.dart';
import 'package:parkway_projects_task/src/signup/signup.dart';
import 'package:sizer/sizer.dart';

import 'home/home.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return Sizer(
          builder: (context, orientation, deviceType) => MaterialApp(
            restorationScopeId: 'app',
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''), // English, no country code
            ],
            onGenerateTitle: (BuildContext context) =>
                AppLocalizations.of(context)!.appTitle,
            theme: buildParkwayLightTheme(context),
            darkTheme: buildParkwayDarkTheme(context),
            themeMode: settingsController.themeMode,
            onGenerateRoute: (RouteSettings routeSettings) {
              return MaterialPageRoute<void>(
                settings: routeSettings,
                builder: (BuildContext context) {
                  switch (routeSettings.name) {
                    case SettingsView.routeName:
                      return SettingsView(controller: settingsController);
                    case ChatDetail.routeName:
                      return ChatDetail();
                    case Signup.routeName:
                      return Signup();
                    case Home.routeName:
                      return Home();
                    case RootPage.routeName:
                      return RootPage();
                    default:
                      return OnboardingPage();
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}
