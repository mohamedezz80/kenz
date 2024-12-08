import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Center(
          child: Text('Menu'),
        ),
      ),
    );
  }
}
