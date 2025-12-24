import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/features/home/navbar_item.dart';
import 'package:chefood/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(child: Text('Home View')),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavbarItem(label: "Home", icon: 'home', onTap: () {}),
              NavbarItem(label: "Recipes", icon: 'recipe', onTap: () {}),
              NavbarItem(label: "Orders", icon: "", onTap: () {}),
              NavbarItem(label: "Chefs", icon: 'chef', onTap: () {}),
              NavbarItem(label: "Profile", icon: 'profile', onTap: () {}),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          elevation: 0,

          backgroundColor: AppColors.primary,
          onPressed: () {},
          shape: CircleBorder(side: BorderSide(color: Colors.white, width: 12)),

          child: SvgPicture.asset(
            'assets/svgs/order.svg',
            width: 28,
            height: 28,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
