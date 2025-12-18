import 'package:chefood/core/routing/app_router.dart';
import 'package:chefood/features/onboarding/onboarding_page_view.dart';
import 'package:chefood/features/splash/splash_view.dart';
import 'package:chefood/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ChefoodApp extends StatelessWidget {
  final AppRouter appRouter;
  const ChefoodApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar', 'EG'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OnboardingPageView(),
    );
  }
}
