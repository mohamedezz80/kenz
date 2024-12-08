import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/spacing.dart';
import 'package:kenz/core/theming/colors.dart';
import 'package:kenz/features/cart_shopping/ui/cart_shopping_screen.dart';
import 'package:kenz/features/favourite/ui/favourite_screen.dart';
import 'package:kenz/features/home/ui/home_screen.dart';
import 'package:kenz/features/menu/ui/menu_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTap = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<Widget> screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const CartShoppingScreen(),
    const MenuScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: ColorManager.white,
        child: const Icon(
          Icons.shopping_cart_checkout_rounded,
          color: ColorManager.grey4,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70.h,
        color: ColorManager.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 7,
        child: Container(
          color: ColorManager.white,
          height: 30.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.w,
                      onPressed: () {
                      setState(() {
                        currentScreen = const HomeScreen();
                        currentTap = 0;
                      });
                      },
                    child: Icon(
                      Icons.home,
                      color: currentTap ==0 ? ColorManager.purple : ColorManager.grey3,
                    ),
                  ),
                  horizontalSpace(20),
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const FavouriteScreen();
                        currentTap = 1;
                      });
                    },
                    child: Icon(
                      Icons.favorite,
                      color: currentTap == 1 ? ColorManager.purple : ColorManager.grey3,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const CartShoppingScreen();
                        currentTap = 2;
                      });
                    },
                    child: Icon(
                      Icons.lock_rounded,
                      color: currentTap == 2 ? ColorManager.purple : ColorManager.grey3,
                    ),
                  ),
                  horizontalSpace(20),
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MenuScreen();
                        currentTap = 3;
                      });
                    },
                    child: Icon(
                      Icons.menu,
                      color: currentTap == 3 ? ColorManager.purple : ColorManager.grey3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
