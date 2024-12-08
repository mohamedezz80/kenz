import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/extentions.dart';
import 'package:kenz/core/theming/colors.dart';
import 'package:kenz/features/login/ui/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios_new,
            size: 20.w,
            color: Colors.black54,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: const SafeArea(
          child: LoginScreenBody(),
      ),
    );
  }
}
