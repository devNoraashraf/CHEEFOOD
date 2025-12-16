import 'package:chefood/core/widgets/app_text_field.dart';
import 'package:chefood/core/widgets/logo_header.dart';
import 'package:chefood/core/widgets/primary_button.dart';
import 'package:chefood/features/forgotpassword/presentation/pages/forgot_password/reset_done_page.dart' show ResetDonePage;
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
            LogoHeader(
              header: "Reset Password",
              supheader:
                  "Enter a new password for your account, and make sure it’s strong and easy to remember",
            ),
            SizedBox(height: 50),
            AppTextField(
              label: "New Password",
              hint: "e.g. ••••••••",
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
            ),
            SizedBox(height: 30),
            AppTextField(
              label: "Confirm New Password",
              hint: "e.g. ••••••••",
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
            ),
            SizedBox(height: 50),
            PrimaryButton(
              label: "Comfirm",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ResetDonePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
