import 'package:flutter/material.dart';
import 'package:kenz/core/theming/colors.dart';
import 'package:kenz/features/signup/ui/widgets/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
          child: SignupBody(),
      ),
    );
  }
}
