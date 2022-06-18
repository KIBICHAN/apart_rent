import 'package:apart_rent/components/custom_text_field.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class OwnerInformation extends StatelessWidget {
  const OwnerInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(2),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "What's new",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(24),
                        color: Colors.black),
                  ),
                ),
                const CustomTextField(
                    hint: "Tên liên hệ",
                    label: "Nhập tên",
                    type: TextInputType.text),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                const CustomTextField(
                    hint: "Địa chỉ",
                    label: "Nhập địa chỉ",
                    type: TextInputType.number),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                const CustomTextField(
                    hint: "Di động",
                    label: "Nhập di động",
                    type: TextInputType.number),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                const CustomTextField(
                    hint: "Email",
                    label: "Nhập Email",
                    type: TextInputType.number),
                SizedBox(
                  height: getProportionateScreenWidth(30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
