import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:chefood/core/widgets/AccountTypeSelector.dart';
import 'package:chefood/core/widgets/app_text_field.dart';
import 'package:chefood/core/widgets/logo_header.dart';
import 'package:chefood/core/widgets/primary_button.dart' show PrimaryButton;
import 'package:chefood/generated/l10n.dart';
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
                    header: S.of(context).welcomeMessage,
                    supheader:
                        S.of(context).subtitleSignup,
                  ),
                  const SizedBox(height: 50),
                  AppTextField(
                    label: S.of(  context).username,
                    hint: S.of(context).enterYourFullName,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: S.of(  context).email,
                    hint: "e.g.name@example.com",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: S.of(context).phoneNumber,
                    hint: "e.g. 01XXXXXXXXX ",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: S.of(context).password,
                    hint: "e.g. ••••••••",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    label: S.of(context).confirmPassword,
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
                    }, label: S.of( context).yourAccount,
                  ),
                  const SizedBox(height: 40),
                  PrimaryButton(label: S.of(context).signup, onPressed: () {}),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).alreadyHaveAccount,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.body16Regular.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(128, 128, 128, 1),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            S.of(context).logInNow,
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
