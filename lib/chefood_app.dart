import 'package:chefood/features/onboarding/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class ChefoodApp extends StatelessWidget {
  const ChefoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chefood',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OnboardingPageView(),
    );
  }
}
