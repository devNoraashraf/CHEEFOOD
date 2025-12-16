import 'package:flutter/material.dart';
import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/core/constants/app_text_styles.dart';

class ForgetPassword extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgetPassword({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'Forgot Password?',
        textAlign: TextAlign.center,
        style: AppTextStyles.body16Bold.copyWith(
          fontWeight: FontWeight.w700,

          fontSize: 12,
          height: 1.0,
          color: AppColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primary,
        ),
      ),
    );
  }
}
