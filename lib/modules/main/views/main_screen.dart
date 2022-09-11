import 'package:flutter/material.dart';
import 'package:shopee_clone/modules/main/views/widgets/main_bottom_navigation_bar.dart';
import 'package:shopee_clone/modules/main/views/widgets/main_screens.dart';

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
      body: MainScreens(),
      bottomNavigationBar: MainBottomNavigationBar(),
    );
  }
}
