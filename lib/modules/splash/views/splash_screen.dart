import 'package:flutter/material.dart';
import 'package:shopee_clone/images/images.dart';
import 'package:shopee_clone/modules/login/views/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = 'splash';

  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LoginScreen.route);
    });
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            SplashImages.shopeeLogo,
            width: 100,
            height: 100,
          ),
        ],
      ),
    ));
  }
}
