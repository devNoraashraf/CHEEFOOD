import 'package:chefood/core/routing/app_router.dart';
import 'package:chefood/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

class ChefoodApp extends StatelessWidget {
  final AppRouter appRouter ;
  const ChefoodApp({super.key, required this.appRouter });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chefood',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashView(),
    );
  }
}
