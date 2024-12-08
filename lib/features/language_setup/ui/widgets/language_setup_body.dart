import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/extentions.dart';
import 'package:kenz/core/helpers/spacing.dart';
import 'package:kenz/core/theming/styles.dart';
import 'package:kenz/core/widgets/customButton.dart';

import '../../../../core/routing/routes.dart';
import 'en_and_ar_container.dart';

class LanguageSetupBody extends StatelessWidget {
  const LanguageSetupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 20.h,
      ),
      child: Column(
        children: [
          verticalSpace(128),
          Image.asset(
            'assets/images/logo_language.png',
          ),
          verticalSpace(80),
          const EnAndArContainer(),
          const Spacer(),
          CustomButton(
              buttonText: 'حفظ',
              textStyle: MyTextStyle.font16whiteW500,
              verticalPadding: 7.h,
              horizontalPadding: 100.w,
              onPressed: () {
                context.pushNamed(Routes.login);
              },
          ),
        ],
      ),
    );
  }
}
