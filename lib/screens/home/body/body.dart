import 'package:apart_rent/screens/home/body/background.dart';
import 'package:apart_rent/screens/home/body/hi_user.dart';
import 'package:apart_rent/screens/home/body/home_header.dart';
import 'package:apart_rent/screens/home/body/promo_slider.dart';
import 'package:apart_rent/screens/home/body/what_news.dart';
import 'package:apart_rent/screens/home/body/work_area.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Background(
      child: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20),),
            const HiUser(),
            SizedBox(height: getProportionateScreenWidth(20),),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const PromoSlider(),
            SizedBox(height: getProportionateScreenWidth(50)),
            const WorkArea(),
            SizedBox(height: getProportionateScreenWidth(40)),
            const WhatNews(),
            SizedBox(height: getProportionateScreenWidth(40)),
          ]),
      ),
      ),
    );
  }
}