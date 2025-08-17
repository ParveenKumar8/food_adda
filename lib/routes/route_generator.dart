import 'package:flutter/material.dart';
import 'package:food_adda_app/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:food_adda_app/features/auth/presentation/screens/login_screen.dart';
import 'package:food_adda_app/features/auth/presentation/screens/register_screen.dart';
import 'package:food_adda_app/features/auth/presentation/screens/set_new_password_screen.dart';
import 'package:food_adda_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:food_adda_app/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:food_adda_app/features/auth/presentation/screens/welcome_screen.dart';
import 'package:food_adda_app/features/onboard/presentation/screens/onboard_screen.dart';
import 'package:food_adda_app/routes/app_routes.dart';

class RouteGenerator {
  RouteGenerator._();
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // If you need to pass arguments, you can extract them from settings.arguments
    // final args = settings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case AppRoutes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case AppRoutes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case AppRoutes.otpVerifyRoute:
        return MaterialPageRoute(builder: (_) => VerifyOtpScreen());
      case AppRoutes.newPasswordRoute:
        return MaterialPageRoute(builder: (_) => SetNewPasswordScreen());
      case AppRoutes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardScreen());
      // Example with arguments
      // case AppRoutes.productDetails:
      //   if (settings.arguments is String) {
      //      return MaterialPageRoute(
      //         builder: (_) => ProductDetailsScreen(productId: settings.arguments as String),
      //      );
      //   }
      // If args are not valid, return error route
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('ERROR: Route not found!')),
        );
      },
    );
  }
}
