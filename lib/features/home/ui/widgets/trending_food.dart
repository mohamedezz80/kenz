import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class TrendingFood extends StatelessWidget {
  const TrendingFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trending Food Offers',
          style: MyTextStyle.font16blackW600,
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.h,left: 0),
          child: SizedBox(
            height: 166.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/images/food.png',
                  height: 166.h,
                  width: 138.w,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
