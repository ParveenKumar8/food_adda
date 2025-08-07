import 'package:flutter/material.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';

class AppRoundedButton extends StatelessWidget {
  final String btnText;
  final bool isDefaultBtn;
  final VoidCallback onPressed;
  const AppRoundedButton({
    super.key,
    required this.btnText,
    required this.onPressed,
    this.isDefaultBtn = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60.0),
        backgroundColor: isDefaultBtn ? AppColors.primary : AppColors.white,
        shape: RoundedRectangleBorder(
          side:
              isDefaultBtn
                  ? BorderSide.none
                  : BorderSide(color: AppColors.primary, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Text(
        btnText,
        style: TextStyle(
          color: isDefaultBtn ? AppColors.white : AppColors.primary,
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
