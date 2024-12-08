import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/extentions.dart';
import 'package:kenz/core/helpers/spacing.dart';
import 'package:kenz/core/theming/colors.dart';
import 'package:kenz/core/theming/styles.dart';
import 'package:kenz/core/widgets/custom_text_form_field.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/customButton.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  late final _formKeyLogin = GlobalKey<FormState>();
  late TextEditingController phoneController, passwordController;
  bool rememberMe = false;
  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyLogin,
      child: Column(
        children: [
          AppTextFormField(
            controller: phoneController,
            hintText: 'رقم الهاتف',
            keyboardType: TextInputType.phone,
            suffixIcon: const Icon(
              Icons.phone,
              color: ColorManager.grey3,
            ),
            validator: (phone) {
              if (phone == null || phone.isEmpty) {
                return 'Please enter a valid phone';
              }
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: passwordController,
            hintText: 'كلمة المرور',
            suffixIcon: const Icon(
              Icons.lock,
              color: ColorManager.grey3,
            ),
            validator: (password) {
              if (password == null || password.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'هل نسيت كلمة المرور؟',
                style: MyTextStyle.font12BlackW500,
              ),
              const Spacer(),
              Text(
                'Remember Me',
                style: MyTextStyle.font12BlackW500,
              ),
              Checkbox(
                value: rememberMe,
                activeColor: ColorManager.mainGreen,
                onChanged: (bool? newRemember) {
                  setState(() {
                    rememberMe = newRemember ?? false;
                  });
                },
              ),
            ],
          ),
          verticalSpace(70),
          CustomButton(
            buttonText: 'تسجيل الدخول',
            textStyle: MyTextStyle.font16whiteW500,
            verticalPadding: 7.h,
            horizontalPadding: 100.w,
            onPressed: () {
              if(_formKeyLogin.currentState!.validate()) {
                context.pushNamed(Routes.bottomNavBar);
              }
            },
          ),
          verticalSpace(25),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.signup);
            },
            child: Text(
              'Don\'t Have An Account? Sign Up',
              style: MyTextStyle.font12BlackW500,
            ),
          ),
        ],
      ),
    );
  }
}
