import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget{
  static String routeName = "/notification";
  const NotificationScreen({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text("Hi im otification!"),),
    );
  }
}