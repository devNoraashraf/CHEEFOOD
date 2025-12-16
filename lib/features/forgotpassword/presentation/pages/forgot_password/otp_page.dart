import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:chefood/core/widgets/logo_header.dart';
import 'package:chefood/core/widgets/primary_button.dart';
import 'package:chefood/features/forgotpassword/presentation/pages/forgot_password/reset_password_page.dart';
import 'package:chefood/features/forgotpassword/presentation/pages/widgets/otp_code_field.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 60,
            bottom: 24,
          ),
          child: Column(
            children: [
              LogoHeader(
                header: 'Enter Verification Code',
                supheader:
                    'A verification code has been sent to your number\n+20 10XXXXXXXX',
              ),

              const SizedBox(height: 40),

              OtpCodeField(length: 4),

              const SizedBox(height: 40),

              PrimaryButton(label: "Verify Now", onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ResetPasswordPage ()),
                  );
              }),

              const SizedBox(height: 18),

              TextButton(
                onPressed: () {},
                child:  Text(
                  'Resend Code',
                 textAlign: TextAlign.center,
                            style: AppTextStyles.body16Bold.copyWith(
                              color: const Color.fromRGBO(241, 116, 60, 1),
                ),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
