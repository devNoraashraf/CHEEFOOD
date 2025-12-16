import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:chefood/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class CustmOnboardingScreen extends StatefulWidget {
  const CustmOnboardingScreen({
    super.key,
    required this.imageOnbording,
    required this.mainText,
    required this.textDescription,
  });
  final String imageOnbording;
  final String mainText;
  final String textDescription;

  @override
  State<CustmOnboardingScreen> createState() => _CustmOnboardingScreenState();
}

class _CustmOnboardingScreenState extends State<CustmOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90.0, bottom: 20.0),
            child: Image.asset(widget.imageOnbording, height: 300),
          ),
          verticalSpacing(16),
          Text(
            widget.mainText,
            style: AppTextStyles.heading24SemiBold.copyWith(
              color: AppColors.primary,
            ),
          ),
          verticalSpacing(16),
          Text(
            widget.textDescription,
            style: AppTextStyles.body14Medium.copyWith(
              color: AppColors.grey,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
