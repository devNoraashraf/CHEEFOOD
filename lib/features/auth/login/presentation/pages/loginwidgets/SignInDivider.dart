import 'package:chefood/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:chefood/core/constants/app_text_styles.dart';

class SignInDivider extends StatelessWidget {
  const SignInDivider({super.key});

  @override
  Widget build(BuildContext context) {
    const Color lineColor = Color.fromRGBO(206, 204, 213, 1); // من Figma
    const Color textColor = Color.fromRGBO(181, 181, 181, 1);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // الخط الشمال بعرض 108
        SizedBox(
          width: 108,
          child: const Divider(
            color: lineColor,
            thickness: 1.5, // border-width 1.5px
            height: 1.5,
          ),
        ),

        // النص في النص
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            S.of(context).orSignIn,
            style: AppTextStyles.body16Medium.copyWith(
              color: textColor,
            ),
          ),
        ),

        // الخط اليمين بعرض 108
        SizedBox(
          width: 108,
          child: const Divider(
            color: lineColor,
            thickness: 1.5,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
