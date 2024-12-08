import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/features/signup/ui/widgets/form_signup.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

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
              'التسجيل',
              style: MyTextStyle.font16BlackW500,
            ),
            const FormSignup(),
          ],
        ),
      ),
    );
  }
}
