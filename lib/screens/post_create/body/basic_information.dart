import 'package:apart_rent/components/custom_drop_box.dart';
import 'package:apart_rent/components/custom_text_field.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class BasicInformation extends StatelessWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
                CustomDropBox(
                  list: type,
                  hint: "Chọn loại hình kinh doanh",
                  label: "Type",
                ),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                CustomDropBox(
                    list: city, hint: "Chọn Tỉnh/Thành phố", label: "City"),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                const CustomTextField(
                    hint: "Quan/Huyen",
                    label: "District",
                    type: TextInputType.text),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                const CustomTextField(
                    hint: "Phuong/Xa",
                    label: "Phuong",
                    type: TextInputType.text),
                SizedBox(
                  height: getProportionateScreenWidth(10),
                ),
                const CustomTextField(
                    hint: "Duong/Pho",
                    label: "Street",
                    type: TextInputType.text),
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
