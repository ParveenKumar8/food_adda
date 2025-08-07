import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_img.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';

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
    final double bgHeight = height * 0.5;
    final double logoWidth = width * 0.5;
    final double top = bgHeight - logoWidth / 2;
    final double bottom = logoWidth / 2;
    return Scaffold(
      body: Column(
        children: [
          Stack(
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.20,
              vertical: 20.0,
            ),
            child: Text(
              AppStrings.descWelcomeShort,
              style: TextStyle(color: AppColors.secondaryFont, fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.1,
                vertical: 25.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppRoundedButton(
                    btnText: AppStrings.btnLogin,
                    onPressed: () => print("Login Pressed"),
                  ),
                  AppRoundedButton(
                    btnText: AppStrings.btnCreateAccount,
                    isDefaultBtn: false,
                    onPressed: () => print("Account Created Pressed"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
