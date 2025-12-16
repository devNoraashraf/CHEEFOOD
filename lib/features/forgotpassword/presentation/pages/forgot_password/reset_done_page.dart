import 'package:chefood/core/widgets/logo_header.dart';
import 'package:chefood/core/widgets/primary_button.dart';
import 'package:chefood/features/auth/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

class ResetDonePage extends StatelessWidget {
  const ResetDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
           padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 60,
          bottom: 24,
        ),
        child: Column(
          children: [
            Image.asset("assets/images/Frame 25.png", width: 346, height: 346),
            LogoHeader(
              header: "Password Reset Successfully!",
              supheader:
                  "You can now sign in to your account using your new password",
            ),
            SizedBox(height: 50,),
              PrimaryButton(
              label: "Sign In Now",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
