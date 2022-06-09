import 'package:apart_rent/components/menu.dart';
import 'package:apart_rent/provider/google_sign_in.dart';
import 'package:apart_rent/screens/profile/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage(user.photoURL!),
                ),
                Positioned(
                  right: -16,
                  bottom: 0,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(color: Colors.white),
                        ),
                        primary: Colors.white,
                        backgroundColor: const Color(0xFFF5F6F9),
                      ),
                      onPressed: () {},
                      child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Menu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
            },
          ),
        ],
      ),
    );
  }
}
