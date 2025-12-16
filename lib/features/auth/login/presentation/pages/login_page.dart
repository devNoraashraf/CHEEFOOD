import 'package:chefood/core/constants/app_text_styles.dart' show AppTextStyles;
import 'package:chefood/core/widgets/SocialCircleButton.dart';
import 'package:chefood/core/widgets/app_text_field.dart';
import 'package:chefood/core/widgets/forgetpassword.dart'
    show Forgetpassword, ForgetPassword;
import 'package:chefood/core/widgets/primary_button.dart';
import 'package:chefood/features/auth/login/presentation/pages/loginwidgets/SignInDivider.dart'
    show SignInDivider;
import 'package:chefood/core/widgets/logo_header.dart';
import 'package:chefood/features/forgotpassword/presentation/pages/forgot_password/forgot_password_page.dart' show ForgotPasswordPage;
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 60.0,
          bottom: 24.0,
        ),
        child: Center(
          child: Column(
            children: [
              LogoHeader(
                header: 'Welcome Back to CHEFOOD!',
                supheader:
                    'Sign in to enjoy tasty meals and quick delivery',

              ),
              const SizedBox(height: 50),

              AppTextField(
                label: "Email Or Phone",
                hint: "e.g.name@example.com / 01XXXXXXXXX ",
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),

              AppTextField(
                label: "Password",
                hint: "e.g. ••••••••",
                obscureText: true,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ForgetPassword(onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ForgotPasswordPage()),
                );
                }),
              ),
              const SizedBox(height: 40),
              PrimaryButton(label: "Sign In", onPressed: () {}),
              const SizedBox(height: 40),
              SignInDivider(),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCircleButton(
                    assetPath: 'assets/images/image 1.png',
                    onTap: () {},
                  ),
                  const SizedBox(width: 16),
                  SocialCircleButton(
                    assetPath: 'assets/images/Vector.png',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.body16Regular.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(128, 128, 128, 1),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Create account",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.body16Bold.copyWith(
                          color: const Color.fromRGBO(241, 116, 60, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
