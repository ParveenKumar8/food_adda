import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';
import 'package:food_adda_app/common/widgets/app_text_field.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.titleResetPassword,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          children: [
            // Center(
            //   child: Text(
            //     AppStrings.titleResetPassword,
            //     style: Theme.of(context).textTheme.headlineLarge,
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                AppStrings.descForResetPassword,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),

            AppTextField(
              hint: AppStrings.inputHintEmail,
              keyboardType: TextInputType.emailAddress,
              controller: emailTextEditingController,
            ),
            SizedBox(height: 20.0),
            AppRoundedButton(
              btnText: AppStrings.btnSend,
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(AppRoutes.otpVerifyRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
