import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_adda_app/common/constants/app_img.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';
import 'package:food_adda_app/common/widgets/app_rounded_button.dart';
import 'package:food_adda_app/common/widgets/app_text_field.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailTextController = TextEditingController();
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
                      AppStrings.btnLogin,
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      AppStrings.descAddDetail,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  AppTextField(
                    hint: AppStrings.inputHintYEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  AppTextField(
                    hint: AppStrings.inputHintPassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 12.0),
                  AppRoundedButton(
                    btnText: AppStrings.btnLogin,
                    onPressed: () {},
                  ),
                  SizedBox(height: 12.0),
                  Center(
                    child: TextButton(
                      onPressed:
                          () => Navigator.of(
                            context,
                          ).pushNamed(AppRoutes.forgetPasswordRoute),
                      child: Text(
                        AppStrings.textForgotPassword,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.0),
                  Center(
                    child: Text(
                      AppStrings.textLoginWith,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 18.0),
                  AppRoundedButton(
                    btnText: AppStrings.btnLoginWithFacebook,
                    onPressed: () {},
                    btnIcon: AppImage.iconFacebook,
                    btnBgColor: AppColors.facebook,
                    btnType: AppRoundButtonType.socialBtn,
                  ),
                  SizedBox(height: 18.0),
                  AppRoundedButton(
                    btnText: AppStrings.btnLoginWithGoogle,
                    onPressed: () {},
                    btnIcon: AppImage.iconGooglePlus,
                    btnBgColor: AppColors.google,
                    btnType: AppRoundButtonType.socialBtn,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: RichText(
                text: TextSpan(
                  text: AppStrings.textDontHaveAccount,
                  style: TextStyle(color: AppColors.secondaryFont),
                  children: [
                    TextSpan(
                      text: AppStrings.btnSignUp,
                      style: TextStyle(color: AppColors.primary),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(
                                context,
                              ).pushNamed(AppRoutes.registerRoute);
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
