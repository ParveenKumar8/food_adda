import 'package:food_adda_app/common/constants/app_img.dart';
import 'package:food_adda_app/common/constants/app_strings.dart';

class HardCodeData {
  HardCodeData._();
  static const titleLabel = "title";
  static const subTitleLabel = "subtitle";
  static const imgPathLabel = "imgPath";
  static List<Map<String, String>> pagesData = [
    {
      titleLabel: AppStrings.titleOnboard1,
      subTitleLabel: AppStrings.subTitleOnboard1,
      imgPathLabel: AppImage.imgOnboard1,
    },
    {
      titleLabel: AppStrings.titleOnboard2,
      subTitleLabel: AppStrings.subTitleOnboard2,
      imgPathLabel: AppImage.imgOnboard2,
    },
    {
      titleLabel: AppStrings.titleOnboard3,
      subTitleLabel: AppStrings.subTitleOnboard3,
      imgPathLabel: AppImage.imgOnboard3,
    },
  ];
}
