import 'package:apart_rent/screens/post_detail/body/body.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget{
  static String routeName = "/detail";
  const PostDetailScreen({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}