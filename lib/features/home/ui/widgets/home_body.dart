import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/spacing.dart';
import 'package:kenz/features/home/ui/widgets/categories_home.dart';
import 'package:kenz/features/home/ui/widgets/location_and_notify.dart';
import 'package:kenz/features/home/ui/widgets/search_feild.dart';
import 'package:kenz/features/home/ui/widgets/slider.dart';
import 'package:kenz/features/home/ui/widgets/trending_food.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
      ),
      child: Column(
        children: [
          verticalSpace(20),
          const LocationAndNotify(),
          verticalSpace(20),
          const SearchField(),
          verticalSpace(20),
          const SliderHome(),
          verticalSpace(20),
          const CategoriesHome(),
          verticalSpace(20),
          const TrendingFood(),
        ],
      ),
    );
  }
}
