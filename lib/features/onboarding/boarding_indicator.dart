import 'package:chefood/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardingIndicator extends StatefulWidget {
  const BoardingIndicator({
    super.key,
    required this.currentIndex,
    required this.onboardingPageController,
  });
  final int currentIndex;
  final PageController onboardingPageController;
  @override
  State<BoardingIndicator> createState() => _BoardingIndicatorState();
}

class _BoardingIndicatorState extends State<BoardingIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 35,
      animation: true,
      backgroundColor: AppColors.white,
      lineWidth: 2.0,
      percent: (widget.currentIndex + 1) / 4,
      animateFromLastPercent: true,
      center: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.primary,
        child: widget.currentIndex == 3
            ? Text(
                "Start",
                style: TextStyle(color: AppColors.white, fontSize: 16),
              )
            : IconButton(
                onPressed: () {
                  widget.onboardingPageController.nextPage(
                    duration: Duration(microseconds: 500),
                    curve: Curves.ease,
                  );
                },
                icon: SvgPicture.asset("assets/svgs/solar_arrow-up-broken.svg"),
              ),
      ),
      progressColor: AppColors.primary,
      animationDuration: 300,
    );
  }
}
