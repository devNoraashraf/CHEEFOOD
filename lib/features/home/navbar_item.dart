import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavbarItem extends StatelessWidget {
  final String label;
  final String icon;
  final Function()? onTap;

  const NavbarItem({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          'assets/svgs/$icon.svg',
          width: 24,
          height: 24,
          color: AppColors.grey,
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}
