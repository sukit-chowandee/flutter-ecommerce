import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String route = 'main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("data"),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
