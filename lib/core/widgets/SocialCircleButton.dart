import 'package:flutter/material.dart';

class SocialCircleButton extends StatelessWidget {
  final String assetPath;
  final VoidCallback? onTap;

  const SocialCircleButton({
    super.key,
    required this.assetPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const borderColor = Color(0xFFECECEC); // rgba(236,236,236,1)

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30), // نفس radius Figma
      child: Container(
        width: 60,   // width من Figma
        height: 60,  // height من Figma
        decoration: BoxDecoration(
          color: Colors.white, // background
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: 0.5, // border-width 0.5px
          ),
        ),
        padding: const EdgeInsets.all(15), // padding: 15px
        child: Image.asset(
          assetPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
