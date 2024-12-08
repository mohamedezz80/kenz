import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/spacing.dart';
import 'package:kenz/core/theming/styles.dart';

class CategoriesHome extends StatelessWidget {
  const CategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Categories',
              style: MyTextStyle.font16blackW600,
            ),
            const Spacer(),
            Text(
              'View All',
              style: MyTextStyle.font12blackW600,
            ),
            horizontalSpace(16),
          ],
        ),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  //top: 10.h,
                  right: 2.w,
                ),
                child: SizedBox(
                  height: 56.h,
                  width: 79.w,
                  child: Image.asset(
                    'assets/images/burger.png',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
