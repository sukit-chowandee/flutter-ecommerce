import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopee_clone/modules/language/bloc/language_bloc.dart';
import 'package:shopee_clone/modules/login/views/login_screen.dart';
import 'package:shopee_clone/modules/main/views/main_screen.dart';
import 'package:shopee_clone/modules/splash/views/splash_screen.dart';

class SPRouter {
  // ignore: unused_element
  static T _args<T>(BuildContext context) {
    return ModalRoute.of(context)?.settings.arguments as T;
  }

  static Map<String, WidgetBuilder> routes = {
    SplashScreen.route: (context) => const SplashScreen(),
    MainScreen.route: (context) => const MainScreen(),
    LoginScreen.route: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (ctx) => LanguageBloc(),
            ),
          ],
          child: const LoginScreen(),
        ),
  };
}
