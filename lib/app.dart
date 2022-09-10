import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shopee_clone/modules/language/bloc/language_bloc.dart';
import 'package:shopee_clone/modules/splash/views/splash_screen.dart';
import 'package:shopee_clone/routers/routers.dart';
import 'package:shopee_clone/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => LanguageBloc(),
          ),
        ],
        child: MaterialApp(
          builder: EasyLoading.init(),
          initialRoute: SplashScreen.route,
          routes: SPRouter.routes,
          theme: AppTheme.themeData,
          title: 'Shopee',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ));
  }
}
