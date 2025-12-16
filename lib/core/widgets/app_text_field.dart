import 'package:chefood/core/constants/app_colors.dart' show AppColors;
import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.body16Medium.copyWith(
            color: const Color.fromRGBO(69, 69, 69, 1),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 48,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1), // background
              borderRadius: BorderRadius.circular(5), // border-radius: 5px
              boxShadow: const [
                // box-shadow: -4px 4px 4px rgba(0,0,0,0.05)
                BoxShadow(
                  offset: Offset(-4, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                ),
                // box-shadow: 4px -4px 4px rgba(0,0,0,0.05)
                BoxShadow(
                  offset: Offset(4, -4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                ),
              ],
            ),
            child: Row(
              children: [
                // الشريط اليسار: width: 6; height: 48;
                Container(
                  width: 6,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(width: 10), // gap: 10px
                Expanded(
                  child: TextField(
                    obscureText: obscureText,
                    keyboardType: keyboardType,
                    onChanged: onChanged,
                    style: AppTextStyles.body16Medium.copyWith(
                      color: const Color.fromRGBO(69, 69, 69, 1),
                    ),
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: AppTextStyles.body16Medium.copyWith(
                        color: const Color.fromRGBO(166, 166, 166, 1),
                      ),
                      border: InputBorder.none,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                if (suffixIcon != null) ...[
                  const SizedBox(width: 8),
                  suffixIcon!,
                  const SizedBox(width: 10),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
