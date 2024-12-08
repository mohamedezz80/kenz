
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/spacing.dart';
import 'package:kenz/core/theming/styles.dart';
import 'package:kenz/features/login/ui/widgets/form_login.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 60.h,
          left: 16.w,
          right: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo_language.png',
              ),
            ),
            verticalSpace(50),
            Text(
              'تسجيل الدخول',
              style: MyTextStyle.font16BlackW500,
            ),
            const FormLogin(),
          ],
        ),
      ),
    );
  }
}
