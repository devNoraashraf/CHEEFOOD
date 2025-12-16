import 'package:chefood/chefood_app.dart';
import 'package:chefood/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChefoodApp(appRouter: AppRouter(),));
}
