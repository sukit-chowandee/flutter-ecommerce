import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopee_clone/app.dart';
import 'package:shopee_clone/configs/app_configs.dart';

void main() {}

void run(Config config) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: config.localizationPath,
      supportedLocales: config.supportedLocales,
      fallbackLocale: config.fallbackLocale,
      child: const App(),
    ),
  );
}