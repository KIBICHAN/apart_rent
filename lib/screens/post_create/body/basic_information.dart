import 'package:apart_rent/components/custom_drop_box.dart';
import 'package:apart_rent/components/custom_text_field.dart';
import 'package:apart_rent/components/default_button.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class BasicInformation extends StatelessWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(20),),
                CustomDropBox(
                  list: type,
                  hint: "Chọn loại hình kinh doanh",
                  label: "Type",
                ),
                SizedBox(height: getProportionateScreenWidth(10),),
                CustomDropBox(
                  list: city,
                  hint: "Chọn Tỉnh/Thành phố",
                  label: "City"
                ),
                SizedBox(height: getProportionateScreenWidth(10),),
                const CustomTextField(hint: "Quan/Huyen", label: "District"),
                SizedBox(height: getProportionateScreenWidth(10),),
                const CustomTextField(hint: "Phuong/Xa", label: "Phuong"),
                SizedBox(height: getProportionateScreenWidth(10),),
                const CustomTextField(hint: "Duong/Pho", label: "Street"),
                SizedBox(height: getProportionateScreenWidth(10),),
                DefaultButton(
                      text: "Continue",
                      press: () {},
                    ),
                SizedBox(height: getProportionateScreenWidth(10),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
