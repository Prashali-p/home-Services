import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_services_appui/Screen/add_new_address_screen.dart';
import 'package:home_services_appui/Screen/login_old_user_screen.dart';
import 'package:home_services_appui/Screen/login_screen.dart';
import 'package:home_services_appui/Screen/otp_screen.dart';
import 'package:home_services_appui/Screen/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:home_services_appui/Screen/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        initialRoute: LoginScreen.route,
        routes: {
          HomePage.route : (context) => HomePage(),
          LoginScreen.route :(context) =>LoginScreen(),
          LoginOldUser.route:(context) =>LoginOldUser(),
          OtpPage.route:(context) =>OtpPage(),
          AddNewAddress.route:(context) =>AddNewAddress(),

        },
      );
    },

    );
  }
}

