import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/features/onboarding/boarding_indicator.dart';
import 'package:chefood/features/onboarding/custm_onboarding_screen.dart';
import 'package:chefood/features/onboarding/skip_text_button.dart';
import 'package:chefood/generated/l10n.dart';

import 'package:flutter/material.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final PageController onboardingPageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Stack(
          children: [
            Image(image: AssetImage("assets/images/background.png")),

            PageView(
              controller: onboardingPageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children:  [
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding1.png',
                  mainText: S.of(context).onboardingTitle1,
                  textDescription:
                      S.of(context).onboardingDesc1,
                ),
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding2.png',
                  mainText: S.of(context).onboardingTitle2,
                  textDescription:
                      S.of(context).onboardingDesc2,
                ),
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding3.png',
                  mainText: S.of(context).onboardingTitle3,
                  textDescription:
                      S.of(context).onboardingDesc3,
                ),
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding4.png',
                  mainText: S.of(context).onboardingTitle4,
                  textDescription:
                      S.of(context).onboardingDesc4,
                ),
                CustmOnboardingScreen(
                  imageOnbording:
                      'assets/images/onboarding_signin_or_login.png',
                  mainText: S.of(context).onboardingTitle5,
                  textDescription: '',
                ),
              ],
            ),
          Positioned(
                    bottom: 80,
                    left: 0,
                    right: 0,
                    child: BoardingIndicator(
                      currentIndex: currentIndex,
                      onboardingPageController: onboardingPageController,
                    ),
                  ),
            Positioned(
              right: 16,
              top: 24,
              child: SkipTextButton(
                currentIndex: currentIndex,
                onboardingPageController: onboardingPageController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
