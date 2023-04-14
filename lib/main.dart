import 'package:app_localization/home/home_view.dart';
import 'package:app_localization/translation/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Providers());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class Providers extends StatelessWidget {
  const Providers({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Locale>(
      create: (context) => AppLocale.stream,
      initialData: const Locale('en'),
      child: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Locale>(
      builder: (context, locale, _) {
        return MaterialApp(
          locale: locale,
          navigatorKey: navigatorKey,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          localeResolutionCallback: (locale, supportedLocales) {
            if (supportedLocales.contains(locale)) {
              return locale;
            }
            return supportedLocales.first;
          },
          home: const HomeView(),
        );
      },
    );
  }
}
