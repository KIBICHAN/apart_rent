import 'dart:convert';

import 'package:apart_rent/components/custom_drop_box.dart';
import 'package:apart_rent/components/custom_text_field.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/models/building.dart';
import 'package:apart_rent/repository/api/api.dart';
import 'package:apart_rent/repository/api/apiUrl.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BasicInformation extends StatefulWidget {
  final Function(String?) type;
  final Function(String?) building;
  final TextEditingController title;
  final TextEditingController description;
  final TextEditingController price;
  const BasicInformation(
      {Key? key,
      required this.title,
      required this.description,
      required this.price,
      required this.type, 
      required this.building})
      : super(key: key);

  _BasicInformation createState() => _BasicInformation();
}

class _BasicInformation extends State<BasicInformation> {
  void passType(String? data) => widget.type(data);
  void passBuilding(String? data) => widget.building(data);

  List data = <String>[]; //edited line

  Future<String> getSWData() async {
    var res = await http.get(Uri.parse("$apiUrl/Building"));
    var resBody = json.decode(res.body);

    setState(() {
      data = resBody;
    });

    // print(resBody);

    return "Sucess";
  }

  @override
  void initState() {
    super.initState();
    getSWData();
  }

  @override
  Widget build(BuildContext context) {
    String? dropdownValue;
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
                  onChanged: (selectedValue) => {
                    setState(() {
                      dropdownValue = selectedValue;
                      if (dropdownValue == "Cho thu?? c??n h??? chung c??") {
                        passType("1");
                      }
                      if (dropdownValue == "B??n c??n h??? chung c??") {
                        passType("2");
                      }
                    })
                  },
                  value: dropdownValue,
                  list: type,
                  hint: "Ch???n lo???i b??i ????ng",
                  label: "Post type",
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
              Card(
                elevation: 0,
                color: const Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    controller: widget.title,
                    hint: "Post title",
                    label: "Ti??u ?????",
                    type: TextInputType.text),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
              Card(
                elevation: 0,
                color: const Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    controller: widget.description,
                    hint: "Description",
                    label: "M?? t???",
                    type: TextInputType.multiline),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
              Card(
                elevation: 0,
                color: const Color.fromARGB(176, 243, 243, 243),
                child: CustomTextField(
                    controller: widget.price,
                    hint: "Gi??",
                    label: "Tri???u/Th??ng",
                    type: TextInputType.number),
              ),
              SizedBox(height: getProportionateScreenWidth(3)),
                        DropdownButtonHideUnderline(
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              labelText: "Building",
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            elevation: 16,
                            style: const TextStyle(color: Colors.grey),
                            hint: const Text("Ch???n d??? ??n",
                                style: TextStyle(fontSize: 17)),
                            isExpanded: true,
                            items: data.map((item) {
                              return DropdownMenuItem(
                                value: item['buildingId'].toString(),
                                child: Text(item['buildingName'], style: const TextStyle(fontSize: 17)),
                              );
                            }).toList(),
                            value: dropdownValue,
                            onChanged: (String? selectedValue) => {
                              setState(() {
                                dropdownValue = selectedValue;
                                passBuilding(dropdownValue);
                              })
                            },
                          ),
                        )
            ],
          ),
        ),
      ),
    );
  }
}
