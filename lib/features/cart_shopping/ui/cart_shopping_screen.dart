import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';



class CartShoppingScreen extends StatelessWidget {
  const CartShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Center(
          child: Text('Cart Shopping'),
        ),
      ),
    );
  }
}
