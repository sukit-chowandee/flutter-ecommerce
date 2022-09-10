import 'package:flutter/material.dart';
import 'package:shopee_clone/configs/app_configs.dart';
import 'package:shopee_clone/main.dart';

void main() {
  run(
   const Config(
      baseURL: 'www.dev.com',
      supportedLocales: [
        Locale('en', ''),
        Locale('th', ''),
      ],
      fallbackLocale: Locale('en', ''),
    ),
  );
}
