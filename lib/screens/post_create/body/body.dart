import 'package:apart_rent/screens/post_create/body/basic_information.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            BasicInformation(),
          ]),
      ),
    );
  }
}
