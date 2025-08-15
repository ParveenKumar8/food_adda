import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/utils/utils.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';
import 'package:food_adda_app/common/widgets/custom_otp_widget.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          children: [
            Center(
              child: Text(
                AppStrings.titleForOTP,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                AppStrings.descDetailOTP +
                    Utils.maskedMobileNumber("+91123456789") +
                    AppStrings.descDetail2OTP,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 30.0),
            CustomOtpWidget(
              onCompleted: (pin) {
                print("Pin is $pin");
                Navigator.of(
                  context,
                ).pushReplacementNamed(AppRoutes.newPasswordRoute);
              },
            ),
            SizedBox(height: 50.0),
            AppRoundedButton(btnText: AppStrings.btnNext, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
