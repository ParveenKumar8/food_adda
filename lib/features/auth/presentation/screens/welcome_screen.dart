import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_img.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Column(
        children: [
          buildTopBanner(width, height),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.15,
              vertical: 20.0,
            ),
            child: Text(
              AppStrings.descWelcomeShort,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
          buildBottomBanner(width, context),
        ],
      ),
    );
  }
}

Widget buildBottomBanner(double width, BuildContext context) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppRoundedButton(
            btnText: AppStrings.btnLogin,
            onPressed:
                () => Navigator.of(context).pushNamed(AppRoutes.loginRoute),
          ),
          AppRoundedButton(
            btnText: AppStrings.btnCreateAccount,
            btnType: AppRoundButtonType.secondaryBtn,
            onPressed:
                () => Navigator.of(context).pushNamed(AppRoutes.registerRoute),
          ),
        ],
      ),
    ),
  );
}

Widget buildTopBanner(double width, double height) {
  final double bgHeight = height * 0.5;
  final double logoWidth = width * 0.5;
  final double top = bgHeight - logoWidth / 2;
  final double bottom = logoWidth / 2;
  return Stack(
    alignment: Alignment.bottomCenter,
    clipBehavior: Clip.none,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: bottom),
        child: Image.asset(
          AppImage.topBanner,
          fit: BoxFit.cover,
          width: width,
          height: bgHeight,
        ),
      ),
      Positioned(
        top: top, //height * 0.40
        child: Image.asset(
          AppImage.appLogo,
          width: logoWidth,
          height: logoWidth,
          fit: BoxFit.contain,
        ),
      ),
    ],
  );
}
