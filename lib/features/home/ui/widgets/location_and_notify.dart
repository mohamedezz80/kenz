import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class LocationAndNotify extends StatelessWidget {
  const LocationAndNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 18.w,
            color: ColorManager.black1,
          ),
          horizontalSpace(5),
          Text(
            '6th Of October, Giza',
            style: MyTextStyle.font12BlackW500,
          ),
          const Spacer(),
          Icon(
            Icons.notifications_none_rounded,
            color: ColorManager.black1,
            size: 20.w,
          ),
        ],
      ),
    );
  }
}
