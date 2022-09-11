import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopee_clone/modules/profile/views/profile_screen.dart';
import 'package:shopee_clone/modules/main/bloc/main_bloc.dart';
import 'package:shopee_clone/modules/store/views/store_screen.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) =>
          previous.selectedIndex != current.selectedIndex,
      builder: (context, state) {
        return IndexedStack(
          index: state.selectedIndex,
          children: const [
            StoreScreen(),
            ProfileScreen(),
          ],
        );
      },
    );
  }
}
