import 'package:app_localization/home/dialog/pop_up_dialog.dart';
import 'package:app_localization/home/home_app_bar.dart';
import 'package:app_localization/translation/app_locale.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(context.translate.welcome),
              const SizedBox(height: 20),
              Text(context.translate.message),
              const SizedBox(height: 20),
              Text(context.translate.paragraph),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () => show(context),
                child: Text(context.translate.showDialog),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void show(BuildContext context) {
    showDialog(
      barrierColor: Colors.black45,
      barrierDismissible: false,
      context: context,
      builder: (context) => const PopUpDialog(),
    );
  }
}
