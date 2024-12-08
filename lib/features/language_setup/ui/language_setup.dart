import 'package:flutter/material.dart';
import 'package:kenz/core/theming/colors.dart';
import 'package:kenz/features/language_setup/ui/widgets/language_setup_body.dart';

class LanguageSetup extends StatelessWidget {
  const LanguageSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: LanguageSetupBody(),
      ),
    );
  }
}
