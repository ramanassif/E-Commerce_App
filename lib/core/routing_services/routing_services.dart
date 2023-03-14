import 'package:ecommerce_app/features/account/account_payment_screen/account_payment_screen.dart';
import 'package:ecommerce_app/features/account/account_payment_screen/add_card_screen.dart';
import 'package:ecommerce_app/features/account/account_payment_screen/add_credit_card_screen.dart';
import 'package:ecommerce_app/features/account/account_payment_screen/edit_credit_card_screen.dart';
import 'package:ecommerce_app/features/account/address_screen/add_address_screen.dart';
import 'package:ecommerce_app/features/account/address_screen/address_screen.dart';
import 'package:ecommerce_app/features/account/delete_address_confirmation/delete_address_confirmation.dart';
import 'package:ecommerce_app/features/account/order_screen/order_details_screen.dart';
import 'package:ecommerce_app/features/account/order_screen/order_screen.dart';
import 'package:ecommerce_app/features/account/profile_screen/change_birthday_screen.dart';
import 'package:ecommerce_app/features/account/profile_screen/change_email_screen.dart';
import 'package:ecommerce_app/features/account/profile_screen/change_gender_screen.dart';
import 'package:ecommerce_app/features/account/profile_screen/change_name_screen.dart';
import 'package:ecommerce_app/features/account/profile_screen/change_password_screen.dart';
import 'package:ecommerce_app/features/account/profile_screen/change_phone_number_screen.dart';
import 'package:ecommerce_app/features/account/profile_screen/profile_screen.dart';
import 'package:ecommerce_app/features/cart_page/cart_screen/widgets/cart_screen_body.dart';
import 'package:ecommerce_app/features/cart_page/credit_card_payment_screen/credit_card_payment_screen.dart';
import 'package:ecommerce_app/features/cart_page/payment_screen/payment_screen.dart';
import 'package:ecommerce_app/features/cart_page/ship_to_screen/ship_to_screen.dart';
import 'package:ecommerce_app/features/cart_page/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/home_page/category_screen/category_screen.dart';
import 'package:ecommerce_app/features/home_page/favorite_screen/favorite_screen.dart';
import 'package:ecommerce_app/features/home_page/home_screen/home_screen.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/screens/notification_activity_screen.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/screens/notification_feed_screen.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/screens/notification_offer_screen.dart';
import 'package:ecommerce_app/features/home_page/notification_screen/screens/notification_screen.dart';
import 'package:ecommerce_app/features/home_page/product_details_screen/product_details_screen.dart';
import 'package:ecommerce_app/features/home_page/review_screen/review_screen.dart';
import 'package:ecommerce_app/features/home_page/super_flash_sae_screen/super_flash_sale_screen.dart';
import 'package:ecommerce_app/features/home_page/write_review_screen/write_review_screen.dart';
import 'package:ecommerce_app/features/search_result_screen/filter_search_screen.dart';
import 'package:ecommerce_app/features/search_result_screen/search_result_failed_screen.dart';
import 'package:ecommerce_app/features/search_result_screen/search_result_screen.dart';
import 'package:ecommerce_app/features/search_result_screen/sort_by_screen.dart';
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
      case 'searchResultScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => SearchResultScreen(
                  mapArguments: data,
                ));
      case 'searchResultFailedScreen':
        return MaterialPageRoute(
            builder: (_) => const SearchResultFailedScreen());
      case 'sortByScreen':
        return MaterialPageRoute(builder: (_) => const SortByScreen());
      case 'filterSearchScreen':
        return MaterialPageRoute(builder: (_) => const FilterSearchScreen());
      case 'superFlashSaleScreen':
        return MaterialPageRoute(builder: (_) => const SuperFlashSale());
      case 'favoriteScreen':
        return MaterialPageRoute(builder: (_) => const FavoriteScreen());
      case 'productDetailsScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(builder: (_) => ProductDetailsScreen(mapArguments: data,));
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
      case 'cartScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(builder: (_) => CartScreenBody(mapArguments: data,));
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
      case 'accountPaymentScreen':
        return MaterialPageRoute(builder: (_) => const AccountPaymentScreen());
      case 'addCreditCardScreen':
        return MaterialPageRoute(builder: (_) => const AddCreditCardScreen());
      case 'addCardScreen':
        return MaterialPageRoute(builder: (_) => const AddCardScreen());
      case 'editCreditCardScreen':
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => EditCreditCardScreen(
                  mapArguments: data,
                ));
    }
    return null;
  }
}
