import 'package:flutter/material.dart';
import 'package:kenz/core/theming/colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
          child: Center(
            child: Text('Favourite'),
          ),
      ),
    );
  }
}
