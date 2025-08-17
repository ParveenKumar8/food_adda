import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/constants/hardcode_data.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class OnboardWidget extends StatelessWidget {
  final int pageIndex;
  final PageController pageController;

  const OnboardWidget({
    super.key,
    required this.pageIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final Map<String, String> pageData = HardCodeData.pagesData[pageIndex];
    final bool isNextBtn =
        pageIndex < HardCodeData.pagesData.length - 1 ? true : false;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          pageData[HardCodeData.imgPathLabel] ?? "",
          width: width * .6,
          height: height * 0.5,
          fit: BoxFit.contain,
        ),
        Spacer(),
        Text(
          pageData[HardCodeData.titleLabel] ?? "",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Spacer(),
        Text(
          pageData[HardCodeData.subTitleLabel] ?? "",
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: AppRoundedButton(
            btnText: isNextBtn ? AppStrings.btnNext : AppStrings.btnDone,
            onPressed: () {
              isNextBtn
                  ? pageController.animateToPage(
                    pageIndex + 1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  )
                  : Navigator.of(
                    context,
                  ).pushReplacementNamed(AppRoutes.homeRoute);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
