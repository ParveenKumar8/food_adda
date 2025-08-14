class Utils {
  static String maskedMobileNumber(String mobileNumber) {
    if (mobileNumber.length <= 4) {
      return mobileNumber;
    }
    const maxNumberInMobile = 10; //numbers used in india
    const numbersDisplay =
        2; // How many number we need to show to user of starting and ending
    int startIndex = mobileNumber.length - maxNumberInMobile; //12
    String starting = mobileNumber.substring(0, startIndex + 2);
    String ending = mobileNumber.substring(
      mobileNumber.length - numbersDisplay,
    );

    final String maskedNumber =
        starting +
        ('*' * (mobileNumber.length - (starting.length) - 2)) +
        ending;
    return maskedNumber;
  }
}
