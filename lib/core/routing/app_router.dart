import 'package:chefood/core/routing/routes.dart';
import 'package:chefood/features/auth/login/presentation/pages/login_page.dart';
import 'package:chefood/features/auth/signup/presentation/pages/signup_page.dart';
import 'package:chefood/features/forgotpassword/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:chefood/features/home/home_view.dart';
import 'package:chefood/features/onboarding/auth_actions_screen.dart';
import 'package:chefood/features/onboarding/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:chefood/features/splash/splash_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingPageView());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.forgotPasswordPage:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.authActionsScreen:
        return MaterialPageRoute(builder: (_) => AuthActionsScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
