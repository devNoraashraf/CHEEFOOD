import 'package:chefood/core/constants/app_colors.dart' show AppColors;
import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool loading;

  const PrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    // لون Figma بالظبط
    const Color primaryColor = Color.fromRGBO(241, 116, 60, 1);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: loading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor, // أو AppColors.primary لو نفس الكود
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // radius من Figma
          ),
          // نفس أرقام الـ padding في Figma
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          minimumSize: const Size(double.infinity, 48), // height: 48
        ),
        child: loading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                label,

                style: AppTextStyles.body14Medium.copyWith(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
      ),
    );
  }
}
