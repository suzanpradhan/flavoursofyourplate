import 'package:flavourofyourpalette/configs/custom_theme.dart';
import 'package:flavourofyourpalette/message/screens/message_detail_chef_screen.dart';
import 'package:flavourofyourpalette/message/screens/message_detail_page.dart';
import 'package:flavourofyourpalette/message/screens/message_list_screen.dart';
import 'package:flavourofyourpalette/modules/auth/screens/chef_profile_setup.dart';
import 'package:flavourofyourpalette/modules/auth/screens/login_chef_screen.dart';
import 'package:flavourofyourpalette/modules/auth/screens/register_chef_screen.dart';
import 'package:flavourofyourpalette/modules/bookings/screens/add_booking.dart';
import 'package:flavourofyourpalette/modules/bookings/screens/new_booking_chef.dart';
import 'package:flavourofyourpalette/modules/checkout/screens/completed_screen.dart';
import 'package:flavourofyourpalette/modules/checkout/screens/payment_screen.dart';
import 'package:flavourofyourpalette/modules/home/screens/homepage.dart';
import 'package:flavourofyourpalette/modules/menus/screens/menus_screen.dart';
import 'package:flavourofyourpalette/modules/notifications/screens/notification_screen.dart';
import 'package:flavourofyourpalette/modules/posts/screens/post_detail_screen.dart';
import 'package:flavourofyourpalette/modules/profile/screens/profile_screen.dart';
import 'package:flavourofyourpalette/modules/reservations/screens/chef_reservation_detail_screen.dart';
import 'package:flavourofyourpalette/modules/reservations/screens/reservation_detail_screen.dart';
import 'package:flavourofyourpalette/modules/reservations/screens/reservation_screen.dart';
import 'package:flutter/material.dart';

import 'configs/app_routes.dart';
import 'message/screens/message_list_chef_screen.dart';
import 'modules/auth/screens/login_screen.dart';
import 'modules/auth/screens/register_screen.dart';
import 'modules/bookings/screens/my_bookings_chef.dart';
import 'modules/profile/screens/chef_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.darkTheme,
      initialRoute: LOGIN_ROUTE,
      routes: {
        LOGIN_ROUTE: (context) => LoginScreen(),
        REGISTER_ROUTE: (context) => RegisterScreen(),
        HOMEPAGE_ROUTE: (context) => HomePage(),
        MENUS_SCREEN: (context) => MenuScreens(),
        MENUS_DETAILS_SCREEN: (context) => PostDetailScreen(),
        PROFILE_ROUTE: (context) => ProfileScreen(),
        NOTIFICATION_ROUTE: (context) => NotificationScreen(),
        RESERVATION_ROUTE: (context) => ReservationScreen(),
        MESSAGE_LIST_ROUTE: (context) => MessageListScreen(),
        MESSAGE_DETAIL_ROUTE: (context) => MessageDetailPage(),
        RESERVATION_DETAIL_SCREEN: (context) => ReservationDetailScreen(),
        ADD_BOOKING_SCREEN: (context) => AddBookigingScreen(),
        PAYMENT_SCREEN: (context) => PaymentScreen(),
        PAYMENT_COMPLETED_SCREEN: (context) => PaymentCompletedScreen(),

        //CHEF ROUTES
        LOGIN_CHEF_SCREEN: (context) => LoginChefScreen(),
        REGISTER_CHEF_SCREEN: (context) => RegisterChefScreen(),
        CHEF_NEW_BOOKINGS_SCREEN: (context) => NewBookingsChefScreen(),
        MY_BOOKINGS_CHEF_SCREEN: (context) => MyBookingsChefScreen(),
        MESSAGE_LIST_CHEF_SCREEN: (context) => MessageListChefScreen(),
        MESSAGE_DETAIL_CHEF_SCREEN: (context) => MessageDetalChefScreen(),
        CHEF_RESERVATION_DETAIL_SCREEN: (context) =>
            ChefReservationDetailScreen(),
        CHEF_PROFILE_SCREEN: (context) => ChefProfileScreen(),
        CHEF_PROFILE_SETUP_SCREEN: (context) => ChefProfileSetupScreen()
      },
    );
  }
}
