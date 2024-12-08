import 'package:flutter/material.dart';
import 'package:kenz/core/theming/colors.dart';
import 'package:kenz/features/home/ui/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: HomeBody(),
        ),
      ),
    );
  }
}
