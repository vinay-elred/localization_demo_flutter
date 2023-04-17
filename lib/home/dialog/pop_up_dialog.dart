import 'package:app_localization/translation/app_locale.dart';
import 'package:flutter/material.dart';

class PopUpDialog extends StatelessWidget {
  const PopUpDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        title: Text(context.translate.dialogTitle),
        content: Text(context.translate.dialogMessage),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(context.translate.close),
          ),
        ],
      ),
    );
  }
}
