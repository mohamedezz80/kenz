import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class EnAndArContainer extends StatelessWidget {
  const EnAndArContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: ColorManager.grey1,
          width: 151.w,
          height: 116.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/english.png',
              ),
              verticalSpace(16),
              Text(
                'English',
                style: MyTextStyle.font16BlackW500,
              ),
            ],
          ),
        ),
        horizontalSpace(10),
        Container(
          color: ColorManager.grey1,
          width: 151.w,
          height: 116.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/arabic.png',
              ),
              verticalSpace(16),
              Text(
                'عربي',
                style: MyTextStyle.font16BlackW500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
