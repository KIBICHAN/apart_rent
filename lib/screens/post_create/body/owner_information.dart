import 'package:apart_rent/components/custom_text_field.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class OwnerInformation extends StatelessWidget {
  const OwnerInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Card(
                elevation: 0,
                color: Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    hint: "Tên liên hệ",
                    label: "Nhập tên",
                    type: TextInputType.text),
              ),
              SizedBox(
                height: getProportionateScreenWidth(3),
              ),
              const Card(
                elevation: 0,
                color: Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    hint: "Địa chỉ",
                    label: "Nhập địa chỉ",
                    type: TextInputType.number),
              ),
              SizedBox(
                height: getProportionateScreenWidth(3),
              ),
              const Card(
                elevation: 0,
                color: Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    hint: "Di động",
                    label: "Nhập di động",
                    type: TextInputType.number),
              ),
              SizedBox(
                height: getProportionateScreenWidth(3),
              ),
              const Card(
                elevation: 0,
                color: Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    hint: "Email",
                    label: "Nhập Email",
                    type: TextInputType.number),
              ),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
