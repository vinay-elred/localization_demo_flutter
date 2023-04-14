import 'package:app_localization/translation/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(context.translate.title),
      actions: [
        DropdownButton<Locale>(
          value: Locale(AppLocalizations.of(context)!.localeName),
          items: AppLocalizations.supportedLocales
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.languageCode.toUpperCase()),
                  ))
              .toList(),
          onChanged: (locale) {
            AppLocale.update(locale!);
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
