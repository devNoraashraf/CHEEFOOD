import 'package:chefood/core/constants/app_colors.dart';
import 'package:chefood/features/home/navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    Center(child: Text('Home Page')),
    Center(child: Text('Recipes Page')),
    Center(child: Text('Orders Page')),
    Center(child: Text('Chefs Page')),
    Center(child: Text('Profile Page')),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: pages[selectedIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Container(
          height: 63,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavbarItem(
                label: "Home",
                icon: 'homee',
                isSelected: selectedIndex == 0,
                onTap: () => onItemTapped(0),
              ),
              NavbarItem(
                label: "Recipes",
                icon: 'recipe',
                isSelected: selectedIndex == 1,
                onTap: () => onItemTapped(1),
              ),
              NavbarItem(
                label: "Orders",
                icon: '',
                isSelected: selectedIndex == 2,
                onTap: () => onItemTapped(2),
              ),

              NavbarItem(
                label: "Chefs",
                icon: 'chef',
                isSelected: selectedIndex == 3,
                onTap: () => onItemTapped(3),
              ),
              NavbarItem(
                label: "Profile",
                icon: 'profile',
                isSelected: selectedIndex == 4,
                onTap: () => onItemTapped(4),
              ),
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
          onPressed: () => onItemTapped(2),
          shape: const CircleBorder(
            side: BorderSide(color: Colors.white, width: 12),
          ),
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
