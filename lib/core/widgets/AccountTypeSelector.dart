import 'package:flutter/material.dart';
import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/core/constants/app_text_styles.dart';

enum AccountType { user, chef }

class AccountTypeSelector extends StatelessWidget {
  final AccountType selected;
  final ValueChanged<AccountType> onChanged;
  final String label;

  const AccountTypeSelector({
    super.key,
    required this.selected,
    required this.onChanged,
    required this.label,
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
        Container(
          height: 64, // height: 64
          padding: const EdgeInsets.symmetric(
            horizontal: 16, // left / right 16
            vertical: 8, // top / bottom 8
          ),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1), // background white
            borderRadius: BorderRadius.circular(5), // border-radius: 5
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _AccountTypeOption(
                label: 'User',
                selected: selected == AccountType.user,
                onTap: () => onChanged(AccountType.user),
              ),
              const SizedBox(height: 8), // gap: 8px بين الاختيارين
              _AccountTypeOption(
                label: 'Chef',
                selected: selected == AccountType.chef,
                onTap: () => onChanged(AccountType.chef),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AccountTypeOption extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _AccountTypeOption({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppTextStyles.body13Regular.copyWith(
              color: const Color.fromRGBO(157, 157, 157, 1),
            ),
          ),

          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selected ? AppColors.primary : Colors.transparent,
              border: Border.all(
                color: selected
                    ? AppColors.primary
                    : const Color.fromRGBO(180, 180, 180, 1),
                width: 1.5,
              ),
            ),
            child: selected
                ? const Icon(Icons.check, size: 12, color: Colors.white)
                : null,
          ),
        ],
      ),
    );
  }
}
