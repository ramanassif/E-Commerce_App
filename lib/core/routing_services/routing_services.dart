import 'package:ecommerce_app/features/home_screen/screens/favorite_screen.dart';
import 'package:ecommerce_app/features/home_screen/screens/home_screen.dart';
import 'package:ecommerce_app/features/home_screen/screens/product_details_screen.dart';
import 'package:ecommerce_app/features/home_screen/screens/review_screen.dart';
import 'package:ecommerce_app/features/home_screen/screens/super_flash_sale_screen.dart';
import 'package:ecommerce_app/features/login_screen/login_screen.dart';
import 'package:ecommerce_app/features/register_screen/register_screen.dart';
import 'package:ecommerce_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'loginScreen':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case 'registerScreen':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case 'homeScreen':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case 'superFlashSaleScreen':
        return MaterialPageRoute(builder: (_) => const SuperFlashSale());
      case 'favoriteScreen':
        return MaterialPageRoute(builder: (_) => const FavoriteScreen());
      case 'productDetailsScreen':
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      case 'reviewsScreen':
        return MaterialPageRoute(builder: (_) => const ReviewScreen());
    }
    return null;
  }
}