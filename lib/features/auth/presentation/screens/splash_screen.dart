import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_img.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushNamed(context, AppRoutes.welcomeRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.splashBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            AppImage.appLogo,
            fit: BoxFit.contain,
            width: width * 0.5,
            height: height * 0.5,
          ),
        ),
      ),
    );
  }
}
