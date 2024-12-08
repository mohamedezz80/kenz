import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/spacing.dart';
import 'package:kenz/core/theming/colors.dart';

class SliderHome extends StatefulWidget {
  const SliderHome({super.key});

  @override
  State<SliderHome> createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {

  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "assets/images/carusal.png",
    "assets/images/carusal.png",
    "assets/images/carusal.png",
    "assets/images/carusal.png",
    "assets/images/carusal.png",
    "assets/images/carusal.png",
    "assets/images/carusal.png",
    "assets/images/carusal.png",
    "assets/images/carusal.png",
  ];

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 10 : 8,
        width: isSelected ? 10 : 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? ColorManager.purple : ColorManager.grey5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 136,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 136,
                  width: double.infinity,
                  child: Image.asset(
                    images[index % images.length],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
        ],
      ),
    );
  }
}