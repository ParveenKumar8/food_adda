import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';
import 'package:food_adda_app/common/widgets/app_text_field.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          children: [
            Center(
              child: Text(
                AppStrings.inputHintNewPassword,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 20,
              ),
              child: Text(
                AppStrings.descDetailForNewPassword,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
            AppTextField(
              hint: AppStrings.inputHintNewPassword,
              controller: newPasswordController,
            ),
            AppTextField(
              hint: AppStrings.inputHintConfirmPassword,
              controller: confirmPasswordController,
            ),
            SizedBox(height: 30),
            AppRoundedButton(
              btnText: AppStrings.btnNext,
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.loginRoute,
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
