import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopee_clone/modules/common/widgets/screen_wrapper.dart';
import 'package:shopee_clone/modules/language/views/language_dialog.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void showCustomDialog(BuildContext context) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const LanguageDialog();
      });

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        appBar: AppBar(
            title: Text(
              "login.sign_in".tr(),
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    showCustomDialog(context);
                  },
                  icon: const Icon(Icons.language))
            ]),
        child: const Text("login"));
  }
}
