import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:chefood/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class AuthActionsScreen extends StatelessWidget {
  const AuthActionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: Stack(
            children: [
              Image(image: AssetImage("assets/images/background.png")),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      verticalSpacing(16),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image(
                          image: AssetImage("assets/images/logo.png"),
                          width: 74,
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/onboarding_signin_or_login.png",
                        ),
                        height: 320,
                      ),
                      Text(
                        'Your Food Journey Awaits',
                        style: AppTextStyles.heading20SemiBold.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      verticalSpacing(30),
                      Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8),
                            onTap: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: const Center(
                              child: Text(
                                'Create Account',
                                style: AppTextStyles.body16Medium,
                              ),
                            ),
                          ),
                        ),
                      ),

                      verticalSpacing(24),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Log In',
                            style: AppTextStyles.body16Medium.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      verticalSpacing(34),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: AppTextStyles.body12Medium.copyWith(
                              color: AppColors.grey,
                            ),
                            children: [
                              const TextSpan(
                                text:
                                    'By continuing, I confirm that I have read and agree to the\n\n',
                              ),
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: AppTextStyles.label12BoldUnderline
                                    .copyWith(color: AppColors.primary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
