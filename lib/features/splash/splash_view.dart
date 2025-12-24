import 'package:chefood/core/helper/extension.dart';
import 'package:chefood/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'splash_item_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool start = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() => start = true);
    });

    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementNamed(Routes.onboardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //! --- S shapes
          SplashItemView(
            image: 'assets/images/s.png',
            rotate: 145,
            bottom: start ? -500 : 500,
            right: start ? 500 : -500,
            top: -650,
          ),
          SplashItemView(
            image: 'assets/images/s.png',
            rotate: 145,
            bottom: start ? -500 : 500,
            right: start ? 500 : -500,
            top: -150,
          ),
          SplashItemView(
            image: 'assets/images/s.png',
            rotate: 145,
            bottom: start ? -500 : 500,
            right: start ? 500 : -500,
            top: 350,
          ),

          //! --- M shapes
          SplashItemView(
            image: 'assets/images/m.png',
            rotate: -215,
            top: start ? -500 : 500,
            left: start ? 500 : -500,
            bottom: -100,
          ),
          SplashItemView(
            image: 'assets/images/m.png',
            rotate: -215,
            top: start ? -500 : 500,
            left: start ? 500 : -500,
            bottom: 400,
          ),
          SplashItemView(
            image: 'assets/images/m.png',
            rotate: -215,
            top: start ? -500 : 500,
            left: start ? 500 : -500,
            bottom: -600,
          ),

          //! --- LOGO
          Center(
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: start ? 1 : 0,
              child: Image.asset('assets/images/logo.png', width: 250),
            ),
          ),
        ],
      ),
    );
  }
}
