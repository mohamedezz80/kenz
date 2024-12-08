import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenz/core/helpers/extentions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/customButton.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class FormSignup extends StatefulWidget {
  const FormSignup({super.key});

  @override
  State<FormSignup> createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  late final _formKeySignup = GlobalKey<FormState>();
  late TextEditingController firstNameController,
      lastNameController,
      phoneController,
      emailController,
      passwordController,
      confirmPasswordController;
  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeySignup,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: AppTextFormField(
                  controller: firstNameController,
                  hintText: 'الاسم الاول',
                  keyboardType: TextInputType.name,
                  validator: (firstName) {
                    if (firstName == null || firstName.isEmpty) {
                      return 'Please enter a valid name';
                    }
                  },
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: AppTextFormField(
                  controller: lastNameController,
                  hintText: 'الاسم الاخير',
                  keyboardType: TextInputType.name,
                  validator: (lastName) {
                    if (lastName == null || lastName.isEmpty) {
                      return 'Please enter a valid name';
                    }
                  },
                ),
              ),
            ],
          ),
          verticalSpace(16),
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
            controller: emailController,
            hintText: 'ادخل البريد الالكتروني',
            keyboardType: TextInputType.emailAddress,
            suffixIcon: const Icon(
              Icons.email_outlined,
              color: ColorManager.grey3,
            ),
            validator: (email) {
              if (email == null || email.isEmpty) {
                return 'Please enter a valid email';
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
          AppTextFormField(
            controller: confirmPasswordController,
            hintText: 'ناكيد كلمة المرور',
            suffixIcon: const Icon(
              Icons.lock,
              color: ColorManager.grey3,
            ),
            validator: (confirmPassword) {
              if (confirmPassword == null || confirmPassword.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(70),
          CustomButton(
            buttonText: 'التسجيل',
            textStyle: MyTextStyle.font16whiteW500,
            verticalPadding: 7.h,
            horizontalPadding: 100.w,
            onPressed: () {
              if (_formKeySignup.currentState!.validate() &&
                  passwordController.text == confirmPasswordController.text) {
                context.pushNamed(Routes.bottomNavBar);
              }
            },
          ),
          verticalSpace(25),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.login);
            },
            child: Text(
              'Don\'t Have An Account? Sign In',
              style: MyTextStyle.font12BlackW500,
            ),
          ),
        ],
      ),
    );
  }
}
