import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:chefood/features/onboarding/boarding_indicator.dart';
import 'package:chefood/features/onboarding/custm_onboarding_screen.dart';
import 'package:chefood/features/onboarding/skip_text_button.dart';

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
              children: const [
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding1.png',
                  mainText: 'Welcome to CHEFOOD',
                  textDescription:
                      'Discover delicious homemade meals and connect with home cooks.',
                ),
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding2.png',
                  mainText: 'Explore Recipes & Posts',
                  textDescription:
                      'Follow your favorite chefs, see trending recipes and food inspiration',
                ),
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding3.png',
                  mainText: 'Order Homemade Meals',
                  textDescription:
                      'Quick and easy delivery of tasty home cooked food',
                ),
                CustmOnboardingScreen(
                  imageOnbording: 'assets/images/onboarding4.png',
                  mainText: 'Save Favorites & Track Orders',
                  textDescription:
                      'Keep your favorite meals and track your deliveries in real time',
                ),
                CustmOnboardingScreen(
                  imageOnbording:
                      'assets/images/onboarding_signin_or_login.png',
                  mainText: 'Your Food Journey Awaits',
                  textDescription: '',
                ),
              ],
            ),
            // Add indicators and navigation buttons here if needed
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
