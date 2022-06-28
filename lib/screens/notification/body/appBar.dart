// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:apart_rent/constants.dart';
import 'package:flutter/material.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;

  const appBar({
    Key? key,
    required this.automaticallyImplyLeading,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Notification',
        style: TextStyle(color: kPrimaryColor, fontSize: 25),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: kRadius,
      automaticallyImplyLeading: automaticallyImplyLeading,
      iconTheme: IconThemeData(color: kPrimaryColor),
    );
  }
}
