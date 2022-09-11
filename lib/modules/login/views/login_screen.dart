// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopee_clone/modules/common/widgets/screen_wrapper.dart';
import 'package:shopee_clone/modules/language/views/language_dialog.dart';
import 'package:shopee_clone/modules/main/views/main_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;
  final _formKey = GlobalKey<FormState>();
  String userName = "";
  String password = "";

  void showCustomDialog(BuildContext context) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const LanguageDialog();
      });

  void _toggle() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  void initState() {
    super.initState();
    _showPassword = true;
  }

  @override
  void dispose() {
    super.dispose();
  }

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
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(
                        fontSize: 12.0,
                      ),
                      icon: const Icon(Icons.person),
                      labelText: 'login.username'.tr(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        userName = value;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "login.pls_input_username".tr();
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: const Icon(Icons.lock),
                        labelText: 'login.password'.tr(),
                        errorStyle: const TextStyle(
                          fontSize: 12.0,
                        ),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: _toggle,
                              icon: _showPassword
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            ),
                          ],
                        )),
                    obscureText: _showPassword,
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "login.pls_input_username".tr();
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(
                                  context, MainScreen.route);
                            }
                          },
                          child: Text(
                            "login.sign_in",
                            style: TextStyle(
                                color: Colors.white),
                          ).tr(),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor))))
                ],
              ),
            )));
  }
}
