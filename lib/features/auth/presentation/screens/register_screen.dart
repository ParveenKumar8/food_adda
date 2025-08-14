import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';
import 'package:food_adda_app/common/widgets/app_text_field.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController mobileTextController = TextEditingController();
  final TextEditingController addressTextController = TextEditingController();
  final TextEditingController confirmPasswordTextController =
      TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                children: [
                  Center(
                    child: Text(
                      AppStrings.btnSignUp,
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      AppStrings.descAddDetailSignUp,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  AppTextField(
                    hint: AppStrings.inputHintName,
                    keyboardType: TextInputType.name,
                    controller: nameTextController,
                  ),
                  AppTextField(
                    hint: AppStrings.inputHintEmail,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailTextController,
                  ),
                  AppTextField(
                    hint: AppStrings.inputHintMobile,
                    keyboardType: TextInputType.phone,
                    controller: mobileTextController,
                  ),
                  AppTextField(
                    hint: AppStrings.inputHintAddress,
                    keyboardType: TextInputType.streetAddress,
                    controller: addressTextController,
                  ),
                  AppTextField(
                    hint: AppStrings.inputHintPassword,
                    obscureText: true,
                    controller: passwordTextController,
                  ),
                  AppTextField(
                    hint: AppStrings.inputHintConfirmPassword,
                    obscureText: true,
                    controller: confirmPasswordTextController,
                  ),
                  SizedBox(height: 12.0),
                  AppRoundedButton(
                    btnText: AppStrings.btnSignUp,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: RichText(
                text: TextSpan(
                  text: AppStrings.textAlreadyHaveAccount,
                  style: TextStyle(color: AppColors.secondaryFont),
                  children: [
                    TextSpan(
                      text: AppStrings.btnLogin,
                      style: TextStyle(color: AppColors.primary),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(
                                context,
                              ).pushReplacementNamed(AppRoutes.loginRoute);
                            },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
