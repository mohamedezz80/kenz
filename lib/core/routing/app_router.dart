import 'package:flutter/material.dart';
import 'package:kenz/core/routing/routes.dart';
import 'package:kenz/features/bottom_nav_bar/ui/bottom_nav_bar.dart';
import 'package:kenz/features/cart_shopping/ui/cart_shopping_screen.dart';
import 'package:kenz/features/favourite/ui/favourite_screen.dart';
import 'package:kenz/features/home/ui/home_screen.dart';
import 'package:kenz/features/language_setup/ui/language_setup.dart';
import 'package:kenz/features/login/ui/login_screen.dart';
import 'package:kenz/features/menu/ui/menu_screen.dart';
import 'package:kenz/features/signup/ui/signup_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.languageSetup:
        return MaterialPageRoute(
          builder: (_) => const LanguageSetup(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case Routes.bottomNavBar:
        return MaterialPageRoute(
          builder: (_) => const BottomNavBar(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.favourite:
        return MaterialPageRoute(
          builder: (_) => const FavouriteScreen(),
        );
      case Routes.cartShopping:
        return MaterialPageRoute(
          builder: (_) => const CartShoppingScreen(),
        );
      case Routes.menu:
        return MaterialPageRoute(
          builder: (_) => const MenuScreen(),
        );
      default:
        return null;
    }
  }
}
