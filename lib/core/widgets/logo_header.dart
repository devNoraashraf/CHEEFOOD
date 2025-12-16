import 'package:chefood/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    super.key,
    required this.header,
    required this.supheader,
    this.imgpath,
  });

  final String header;
  final String supheader;
  final String? imgpath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (imgpath != null) ...[
          Image.asset(imgpath!, height: 150, width: 115),
          const SizedBox(height: 16),
        ],
        const SizedBox(height: 16),
        Text(
          header,
          textAlign: TextAlign.center,
          style: AppTextStyles.heading24SemiBold.copyWith(
            color: const Color.fromRGBO(69, 69, 69, 1),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: Text(
            supheader,
            textAlign: TextAlign.center,
            style: AppTextStyles.body14Medium.copyWith(
              height: 1.5,
              color: const Color.fromRGBO(177, 177, 177, 1),
            ),
          ),
        ),
      ],
    );
  }
}
