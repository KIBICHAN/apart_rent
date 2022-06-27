import 'dart:convert';

import 'package:apart_rent/models/rent_post.dart';
import 'package:apart_rent/repository/api/apiUrl.dart';
import 'package:http/http.dart' as http;

Future<List<RentPost>> fetchAllData() async {
  final response = await http.get(Uri.parse(apiUrl));
  if(response.statusCode == 200){
    return (jsonDecode(response.body) as List).map((e) => RentPost.fromJson(e)).toList();
  }else{
    throw Exception('Fail to load API');
  }
}

Future<RentPost> fetchData() async {
  final response = await http.get(Uri.parse("$apiUrl?id=1"));
  if(response.statusCode == 200){
    return RentPost.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('Fail to load DemoApi');
  }
}