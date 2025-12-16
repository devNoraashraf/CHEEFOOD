import 'package:chefood/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashItemView extends StatelessWidget {
  final String image;
  final double rotate;
  final double? bottom, right, top, left;

  const SplashItemView({
    super.key,
    required this.image,
    required this.rotate,
    this.bottom,
    this.right,
    this.top,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 3),
      curve: Curves.easeInOut,
      bottom: bottom,
      right: right,
      top: top,
      left: left,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(rotate / 360),
        child: Image.asset(
          image,
          width: 400,
          color: AppColors.primary.withOpacity(0.4),
        ),
      ),
    );
  }
}
