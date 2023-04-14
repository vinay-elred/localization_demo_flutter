import 'dart:async';
import 'package:app_localization/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

AppLocalizations get translate {
  final context = navigatorKey.currentContext!;
  return AppLocalizations.of(context)!;
}

class AppLocale extends ChangeNotifier {
  static final StreamController<Locale> _controller = StreamController();

  static void update(Locale locale) => _controller.sink.add(locale);

 static Stream<Locale> get stream => _controller.stream.distinct();
}

extension Loaclization on BuildContext {
  AppLocalizations get translate => AppLocalizations.of(this)!;
}
