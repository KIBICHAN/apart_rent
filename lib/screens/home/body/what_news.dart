import 'package:apart_rent/components/news_card.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class WhatNews extends StatelessWidget {
  const WhatNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "What's new",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "See More",
                  style: TextStyle(
                    color: Color(0xFFBBBBBB),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NewsCard(
                image: "assets/images/new_dog.png", 
                title: "Gặp người quen: Sủa, Gặp trộm: Vẫy đuôi 👉", 
                press: (){}),
              NewsCard(
                image: "assets/images/new_cat.png", 
                title: "Khiến chủ nhân hành động như kẻ tôi tớ 👉", 
                press: (){}),
              NewsCard(
                image: "assets/images/new_deal.png", 
                title: "Chương trình Đại hội đại hạ giá sẽ kết vào...", 
                press: (){}),
              NewsCard(
                image: "assets/images/new_momo.png", 
                title: "HOT: CHỢ TỐT x MOMO - LÊN CHỢ TỐT CHỐT ĐƠN, NHẬN 150K", 
                press: (){}),
            ],
          ),
        ),
      ],
    );
  }
}
