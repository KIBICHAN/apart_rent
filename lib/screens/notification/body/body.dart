// ignore_for_file: prefer_const_constructors

import 'package:apart_rent/screens/notification/body/appBar.dart';
import 'package:apart_rent/screens/notification/body/notification_title.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FB),
      appBar: appBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 12,
          itemBuilder: (context, index) {
            return notificationTitle(
                title: "Thuê thành công",
                subtitle: 'Cảm ơn quý khách, chúc quý khách một ngày tốt lành');
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.transparent,
            );
          }),
    );
  }
}
