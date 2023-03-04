import 'package:ecommerce_app/features/address_screen/add_address_screen.dart';
import 'package:ecommerce_app/features/address_screen/address_screen.dart';
import 'package:ecommerce_app/features/category_screen/category_screen.dart';
import 'package:ecommerce_app/features/credit_card_payment_screen/credit_card_payment_screen.dart';
import 'package:ecommerce_app/features/delete_address_confirmation/delete_address_confirmation.dart';
import 'package:ecommerce_app/features/favorite_screen/favorite_screen.dart';
import 'package:ecommerce_app/features/home_screen/home_screen.dart';
import 'package:ecommerce_app/features/notification_screen/screens/notification_activity_screen.dart';
import 'package:ecommerce_app/features/notification_screen/screens/notification_feed_screen.dart';
import 'package:ecommerce_app/features/notification_screen/screens/notification_offer_screen.dart';
import 'package:ecommerce_app/features/notification_screen/screens/notification_screen.dart';
import 'package:ecommerce_app/features/order_screen/order_details_screen.dart';
import 'package:ecommerce_app/features/order_screen/order_screen.dart';
import 'package:ecommerce_app/features/payment_screen/payment_screen.dart';
import 'package:ecommerce_app/features/product_details_screen/product_details_screen.dart';
import 'package:ecommerce_app/features/profile_screen/change_birthday_screen.dart';
import 'package:ecommerce_app/features/profile_screen/change_email_screen.dart';
import 'package:ecommerce_app/features/profile_screen/change_gender_screen.dart';
import 'package:ecommerce_app/features/profile_screen/change_name_screen.dart';
import 'package:ecommerce_app/features/profile_screen/change_password_screen.dart';
import 'package:ecommerce_app/features/profile_screen/change_phone_number_screen.dart';
import 'package:ecommerce_app/features/profile_screen/profile_screen.dart';
import 'package:ecommerce_app/features/review_screen/review_screen.dart';
import 'package:ecommerce_app/features/ship_to_screen/ship_to_screen.dart';
import 'package:ecommerce_app/features/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/super_flash_sae_screen/super_flash_sale_screen.dart';
import 'package:ecommerce_app/features/login_screen/login_screen.dart';
import 'package:ecommerce_app/features/register_screen/register_screen.dart';
import 'package:ecommerce_app/features/splash_screen/splash_screen.dart';
import 'package:ecommerce_app/features/write_review_screen/write_review_screen.dart';
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
      case 'writeReview':
        return MaterialPageRoute(builder: (_) => const WriteReview());
      case 'notificationScreen':
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case 'notificationOfferScreen':
        return MaterialPageRoute(
            builder: (_) => const NotificationOfferScreen());
      case 'notificationFeedScreen':
        return MaterialPageRoute(
            builder: (_) => const NotificationFeedScreen());
      case 'notificationActivityScreen':
        return MaterialPageRoute(
            builder: (_) => const NotificationActivityScreen());
      case 'categoryScreen':
        return MaterialPageRoute(builder: (_) => const CategoryScreen());
      case 'shipToScreen':
        return MaterialPageRoute(builder: (_) => const ShipToScreen());
      case 'paymentScreen':
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case 'creditCardPaymentScreen':
        return MaterialPageRoute(
            builder: (_) => const CreditCardPaymentScreen());
      case 'successScreen':
        return MaterialPageRoute(builder: (_) => const SuccessScreen());
      case 'profileScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ProfileScreen(mapArguments: data));
      case 'changeNameProfile':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ChangeNameProfile(mapArguments: data));
      case 'changeGenderScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ChangeGenderScreen(mapArguments: data));
      case 'changeBirthDayScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ChangeBirthDayScreen(mapArguments: data));
      case 'changeEmailScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ChangeEmailScreen(mapArguments: data));
      case 'changePhoneNumberScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ChangePhoneNumberScreen(mapArguments: data));
      case 'changePasswordScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ChangePasswordScreen(mapArguments: data));
      case 'orderScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => OrderScreen(mapArguments: data));
      case 'orderDetailsScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => OrderDetailsScreen(mapArguments: data));
      case 'addressScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => AddressScreen(mapArguments: data));
      case 'addAddressScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => AddAddressScreen(mapArguments: data));
      case 'deleteAddressScreen':
        return MaterialPageRoute(
            builder: (_) => const DeleteAddressConfirmation());
    }
    return null;
  }
}
