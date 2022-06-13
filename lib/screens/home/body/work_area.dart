import 'package:apart_rent/components/item_card.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class WorkArea extends StatelessWidget {
  const WorkArea({Key? key}) : super(key: key);

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
                "Work desk for you",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "See More",
                  style: TextStyle(
                    color: kPrimaryColor,
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
              ItemCard(
                category: "Calculator", 
                image: "assets/images/calculator.png", 
                numOfBrands: 1, 
                press: (){}),
              ItemCard(
                image: "assets/images/analysis.png",
                category: "Analysis",
                numOfBrands: 2,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
          ],),
        )
      ],
    );
  }
}
