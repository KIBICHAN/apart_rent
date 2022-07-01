// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_interpolation_to_compose_strings

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
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 0,
        right: 15,
        bottom: 0,
      ),
      child: SizedBox(
        height: 100,
        child: ListTile(
          leading: Container(
            height: 70,
            width: 70,
            child: Image.asset('assets/images/vinhome.jpg',
                width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
          isThreeLine: true,
          subtitle: Text(subtitle),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => NotificationPage())),
          enabled: true,
          shape: RoundedRectangleBorder(
            side:
                BorderSide(color: Color.fromARGB(255, 233, 227, 227), width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          tileColor: Colors.white,
        ),
      ),
    );
  }
}
