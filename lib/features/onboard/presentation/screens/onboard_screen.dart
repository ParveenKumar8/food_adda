import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/constants/hardcode_data.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';
import 'package:food_adda_app/features/onboard/presentation/widgets/onboard_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentPage = 0;
  bool isSkipButtonVisible = true;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              PageView.builder(
                controller: pageController,
                itemCount: HardCodeData.pagesData.length,
                itemBuilder:
                    (context, pageIndex) => OnboardWidget(
                      pageIndex: pageIndex,
                      pageController: pageController,
                    ),
                onPageChanged:
                    (pageIndex) => setState(() {
                      currentPage = pageIndex;
                      if (currentPage == HardCodeData.pagesData.length - 1) {
                        isSkipButtonVisible = false;
                      } else {
                        isSkipButtonVisible = true;
                      }
                    }),
              ),
              Positioned(
                top: height * 0.5,
                left: 0,
                right: 0,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: HardCodeData.pagesData.length,
                    effect: WormEffect(
                      dotColor: AppColors.dotBgColor,
                      activeDotColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
              isSkipButtonVisible
                  ? Positioned(
                    top: 0,
                    right: 0,
                    child: TextButton(
                      child: Text(
                        AppStrings.btnSkip,
                        style: TextStyle(color: AppColors.primary),
                      ),
                      onPressed: () {
                        pageController.jumpToPage(
                          HardCodeData.pagesData.length - 1,
                        );
                      },
                    ),
                  )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
//  Column(
//                   children: [
//                     SmoothPageIndicator(
//                       controller: _pageController,
//                       count: HardCodeData.pagesData.length,
//                       effect: WormEffect(
//                         dotColor: AppColors.dotBgColor,
//                         activeDotColor: AppColors.primary,
//                       ),
//                     ),
//                     // SizedBox(height: 16),
//                     // Row(
//                     //   mainAxisAlignment: MainAxisAlignment.center,
//                     //   children: [
//                     //     if (currentPage < pages.length - 1)
//                     //       TextButton(
//                     //         child: Text('Skip'),
//                     //         onPressed: () {
//                     //           controller.jumpToPage(pages.length - 1);
//                     //         },
//                     //       ),
//                     //     Spacer(),
//                     //     ElevatedButton(
//                     //       child: Text(
//                     //         currentPage == pages.length - 1 ? 'Done' : 'Next',
//                     //       ),
//                     //       onPressed: () {
//                     //         if (currentPage == pages.length - 1) {
//                     //           // Handle "Done", e.g., Navigator.pushReplacement...
//                     //         } else {
//                     //           controller.nextPage(
//                     //             duration: Duration(milliseconds: 300),
//                     //             curve: Curves.easeIn,
//                     //           );
//                     //         }
//                     //       },
//                     //     ),
//                     //   ],
//                     // ),
//                   ],