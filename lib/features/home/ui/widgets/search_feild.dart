import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/theming/styles.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {

  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: AppTextFormField(
        controller: searchController,
        borderRadius: BorderRadius.circular(8),
        hintText: 'Search your desired foods or restaurants',
        hintStyle: MyTextStyle.font12greyW500,
        keyboardType: TextInputType.text,
        enabledBorderColor: ColorManager.purple,
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: ColorManager.grey3,
        ),
        validator: (search) {},
      ),
    );
  }
}
