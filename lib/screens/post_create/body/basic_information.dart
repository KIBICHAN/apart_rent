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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0,
                color: const Color.fromARGB(176, 243, 243, 243),
                child: CustomDropBox(
                  list: type,
                  hint: "Chọn loại bài đăng",
                  label: "Post type",
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
              const Card(
                elevation: 0,
                color: Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    hint: "Post title",
                    label: "Tiêu đề",
                    type: TextInputType.text),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
              const Card(
                elevation: 0,
                color: Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    hint: "Description",
                    label: "Mô tả",
                    type: TextInputType.multiline),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
              const Card(
                elevation: 0,
                color: Color.fromARGB(176, 243, 243, 243),
                child:
              CustomTextField(
                          hint: "Triệu/Tháng",
                          label: "Giá cả",
                          type: TextInputType.number),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
              Card(
                elevation: 0,
                color: const Color.fromARGB(176, 243, 243, 243),
                child: CustomDropBox(
                    list: city, hint: "Chọn tòa nhà", label: "Building"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
