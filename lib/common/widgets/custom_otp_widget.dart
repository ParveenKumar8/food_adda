import 'package:flutter/material.dart';
import 'package:food_adda_app/common/theme/widget_theme.dart/custom_widget_theme/pinput_otp_theme.dart';
import 'package:pinput/pinput.dart';

class CustomOtpWidget extends StatelessWidget {
  final ValueChanged<String>? onCompleted;
  final bool obscureInput;

  const CustomOtpWidget({
    super.key,
    this.onCompleted,
    this.obscureInput = false,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: PinputOtpTheme.defaultPinTheme,
      focusedPinTheme: PinputOtpTheme.focusedPinTheme,
      submittedPinTheme: PinputOtpTheme.submittedPinTheme,
      obscureText: obscureInput,
      //obscuringCharacter: "*",
      keyboardType: TextInputType.number,
      showCursor: true,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      onCompleted: onCompleted,
    );
  }
}
