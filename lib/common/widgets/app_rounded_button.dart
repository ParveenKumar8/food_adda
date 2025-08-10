import 'package:flutter/material.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';

enum AppRoundButtonType { primaryBtn, secondaryBtn, socialBtn }

class AppRoundedButton extends StatelessWidget {
  final String btnText;
  final AppRoundButtonType btnType;
  final VoidCallback onPressed;
  final Color btnBgColor;
  final String? btnIcon;
  const AppRoundedButton({
    super.key,
    required this.btnText,
    required this.onPressed,
    this.btnBgColor = AppColors.primary,
    this.btnType = AppRoundButtonType.primaryBtn,
    this.btnIcon,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle? textTheme = Theme.of(context).textTheme.labelLarge;
    BorderSide btnBorder = BorderSide.none;
    Color bgColor = AppColors.primary;
    TextStyle btnTextColor = textTheme!;
    if (btnType == AppRoundButtonType.secondaryBtn) {
      btnBorder = BorderSide(color: AppColors.primary, width: 1.0);
      bgColor = AppColors.white;
      btnTextColor = textTheme.copyWith(color: AppColors.primary);
    } else if (btnType == AppRoundButtonType.socialBtn) {
      bgColor = btnBgColor;
    }
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60.0),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          side: btnBorder,
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      icon:
          btnIcon != null
              ? Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: ImageIcon(
                  AssetImage(btnIcon!),
                  size: 20.0,
                  color: AppColors.white,
                ),
              )
              : null,
      label: Text(btnText, style: btnTextColor),
    );
  }
}
