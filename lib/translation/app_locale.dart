import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLocale extends ChangeNotifier {
  static final StreamController<Locale> _controller = StreamController();

  static void update(Locale locale) => _controller.sink.add(locale);

  static Stream<Locale> get stream => _controller.stream.distinct();
}

extension Loaclization on BuildContext {
  AppLocalizations get translate => AppLocalizations.of(this)!;
}
