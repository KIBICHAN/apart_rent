import 'package:apart_rent/screens/about/about_screen.dart';
import 'package:apart_rent/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  AboutScreen.routeName: (context) => const AboutScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};