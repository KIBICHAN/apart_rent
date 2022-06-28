import 'package:apart_rent/bottom_menu.dart';
import 'package:apart_rent/components/custom_bottom_nav_bar.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/screens/profile/body/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  //static final user = FirebaseAuth.instance.currentUser!;
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("Settings",
            style: TextStyle(color: kPrimaryColor, fontSize: 30),
            ),
            toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
            titleTextStyle: Theme.of(context).textTheme.headline6,
            centerTitle: true,
            // leading: IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.arrow_back_ios,
            //     size: 25,
            //     color: kPrimaryColor,
            //   ),
            // ),
            actions: const [],
          ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}