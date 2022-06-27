import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int size;
  final int maxline;
  final Color color;
  const CustomText({
    Key? key, 
    required this.text, 
    required this.size, 
    required this.color, 
    required this.maxline
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        color: Colors.white,
        child: 
    Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxline,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: size.toDouble(),
        color: color,
        ),
    ),
      ),
    );
  }
}
