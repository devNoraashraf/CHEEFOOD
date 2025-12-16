import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:chefood/core/widgets/AccountTypeSelector.dart';
import 'package:chefood/core/widgets/app_text_field.dart';
import 'package:chefood/core/widgets/logo_header.dart';
import 'package:chefood/core/widgets/primary_button.dart' show PrimaryButton;
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
  AccountType _selectedType = AccountType.user;
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
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
                    header: 'Welcome to CHEFOOD!',
                    supheader:
                        'Sign up to explore delicious homemade meals and start your food journey',
                  ),
                  const SizedBox(height: 50),
                  AppTextField(
                    label: "User Name",
                    hint: "Enter your full name",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: "Email ",
                    hint: "e.g.name@example.com",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: "Phone Number",
                    hint: "e.g. 01XXXXXXXXX ",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: "Password",
                    hint: "e.g. ••••••••",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: "Confirm Password",
                    hint: "e.g. ••••••••",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AccountTypeSelector(
                    selected: widget._selectedType,
                    onChanged: (value) {
                      setState(() {
                        widget._selectedType = value;
                      });
                    }, label: 'Your Account',
                  ),
                  const SizedBox(height: 40),
                  PrimaryButton(label: "Sign Up", onPressed: () {}),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.body16Regular.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(128, 128, 128, 1),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Log In Now",
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
        ),
      ),
    );
  }
}
