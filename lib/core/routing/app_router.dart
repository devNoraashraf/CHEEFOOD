import 'package:chefood/core/routing/routes.dart';
import 'package:chefood/features/auth/login/presentation/pages/login_page.dart';
import 'package:chefood/features/auth/signup/presentation/pages/signup_page.dart';
import 'package:chefood/onboarding/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingPageView());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => Container());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
