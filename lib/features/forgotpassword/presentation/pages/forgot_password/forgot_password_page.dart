import 'package:chefood/core/constants/app_text_styles.dart' show AppTextStyles;
import 'package:chefood/core/widgets/app_text_field.dart';
import 'package:chefood/core/widgets/logo_header.dart';
import 'package:chefood/core/widgets/primary_button.dart';
import 'package:chefood/features/forgotpassword/presentation/pages/forgot_password/otp_page.dart'
    show OtpPage;
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 60,
            bottom: 24,
          ),
          child: Column(
            children: [
              LogoHeader(
                header: 'Forgot your password?',
                supheader: 'Enter your Number below to reset your password',
              ),
              const SizedBox(height: 50),

              AppTextField(
                label: "Phone Number",
                hint: "e.g. 01XXXXXXXXX",
                keyboardType: TextInputType.phone,
                onChanged: (value) {},
              ),

              const SizedBox(height: 50),

              PrimaryButton(
                label: "Send Verification Code",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const OtpPage()),
                  );
                },
              ),

              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remembered your password?  ",
                    style: AppTextStyles.body16Regular.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(128, 128, 128, 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: AppTextStyles.body16Bold.copyWith(
                        color: const Color.fromRGBO(241, 116, 60, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
