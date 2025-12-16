import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SkipTextButton extends StatefulWidget {
  final PageController onboardingPageController;
  final int currentIndex;

  const SkipTextButton({
    super.key,
    required this.onboardingPageController,
    required this.currentIndex,
  });

  @override
  State<SkipTextButton> createState() => _SkipTextButtonState();
}

class _SkipTextButtonState extends State<SkipTextButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
        widget.onboardingPageController.jumpToPage(4);
      },
      child: widget.currentIndex == 3 || widget.currentIndex == 4
          ? SizedBox.shrink()
          : Text(
              "Skip",
              style: AppTextStyles.body16Regular.copyWith(
                color: AppColors.primary,
              ),
            ),
    );
  }
}
