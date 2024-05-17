import 'package:fibrohospital/screens/ahella/Core/theming/my_colors.dart';
import 'package:fibrohospital/screens/ahella/Features/Home/Presentation/manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/views/store_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return PersistentTabView(
        context,
        screens: _buildScreens(context),
        items: _navBarsItems(context),
        controller: BlocProvider.of<NavBarCubit>(context).controller,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        hideNavigationBarWhenKeyboardShows: true,
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style8,
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      );
    });
  }
}

List<Widget> _buildScreens(BuildContext context) {
  return [
    const StoreView(),
    const SizedBox(),
    const SizedBox(),
    // const LaboratoriesView(), // TODO: change it to the chat view
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      icon: Container(
        padding: const EdgeInsets.all(6.0),
        decoration:
            const BoxDecoration(color: MyColors.green, shape: BoxShape.circle),
        child: SvgPicture.asset('assets/ahella/home.svg', color: Colors.white),
      ),
      inactiveIcon: SvgPicture.asset('assets/ahella/home.svg',
          color: const Color(0xff858EA9)),
    ),
    PersistentBottomNavBarItem(
      icon: Container(
        padding: const EdgeInsets.all(6.0),
        decoration:
            const BoxDecoration(color: MyColors.green, shape: BoxShape.circle),
        child: SvgPicture.asset('assets/ahella/fav.svg', color: Colors.white),
      ),
      inactiveIcon: SvgPicture.asset('assets/ahella/fav.svg',
          color: const Color(0xff858EA9)),
    ),
    PersistentBottomNavBarItem(
      icon: Container(
        padding: const EdgeInsets.all(6.0),
        decoration:
            const BoxDecoration(color: MyColors.green, shape: BoxShape.circle),
        child: SvgPicture.asset('assets/ahella/book.svg', color: Colors.white),
      ),
      inactiveIcon: SvgPicture.asset('assets/ahella/book.svg',
          color: const Color(0xff858EA9)),
    ),
    PersistentBottomNavBarItem(
      icon: Container(
        padding: const EdgeInsets.all(6.0),
        decoration:
            const BoxDecoration(color: MyColors.green, shape: BoxShape.circle),
        child: SvgPicture.asset('assets/ahella/chat.svg', color: Colors.white),
      ),
      inactiveIcon: SvgPicture.asset('assets/ahella/chat.svg',
          color: const Color(0xff858EA9)),
    ),
  ];
}
