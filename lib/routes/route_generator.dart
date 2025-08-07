import 'package:flutter/material.dart';
import 'package:food_adda_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:food_adda_app/features/auth/presentation/screens/welcome_screen.dart';
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
