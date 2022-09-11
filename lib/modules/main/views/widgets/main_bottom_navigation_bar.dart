import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopee_clone/images/images.dart';
import 'package:shopee_clone/modules/main/bloc/main_bloc.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  BottomNavigationBarItem buildBottomNavigationBarItem(
    BuildContext context, {
    required String title,
    required String image,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        image,
        // color: Theme.of(context).primaryColor,
        height: 25,
      ),
      activeIcon: SvgPicture.asset(
        image,
        color: Theme.of(context).primaryColor,
        height: 25,
      ),
      label: title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) =>
          previous.selectedIndex != current.selectedIndex,
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: (index) => BlocProvider.of<MainBloc>(context)
              .add(MainEventSelectedTab(index)),
          currentIndex: state.selectedIndex,
          items: [
            buildBottomNavigationBarItem(
              context,
              title: "main_screen.store".tr(),
              image: TabbarImages.tabStore,
            ),
            buildBottomNavigationBarItem(
              context,
              title: "main_screen.profile".tr(),
              image: TabbarImages.tabProfile,
            ),
          ],
        );
      },
    );
  }
}
