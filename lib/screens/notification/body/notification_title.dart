// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:apart_rent/constants.dart';
import 'package:apart_rent/screens/notification/body/notificationPage.dart';
import 'package:flutter/material.dart';

class notificationTitle extends StatelessWidget {
  final String title, subtitle;
  const notificationTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(vinhomeLogo), fit: BoxFit.cover))),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(subtitle),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => NotificationPage())),
      enabled: true,
    );
  }
}
