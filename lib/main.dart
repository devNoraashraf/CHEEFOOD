import 'package:chefood/features/auth/signup/presentation/pages/signup_page.dart';
import 'package:chefood/features/forgotpassword/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:chefood/features/auth/login/presentation/pages/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ChefoodApp());
}

class ChefoodApp extends StatelessWidget {
  const ChefoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chefood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home:  ForgotPasswordPage(),
    );
  }
}
