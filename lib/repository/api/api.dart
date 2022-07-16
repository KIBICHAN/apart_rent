import 'dart:convert';

import 'package:apart_rent/models/listpost.dart';
import 'package:apart_rent/models/post.dart';
import 'package:apart_rent/repository/api/apiUrl.dart';
import 'package:http/http.dart' as http;

Future<List<ListPost>> fetchAllData() async {
  final response = await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List)
        .map((e) => ListPost.fromJson(e))
        .toList();
  } else {
    throw Exception('Fail to load API');
  }
}

Future<List<ListPost>> fetchDataBaseOnStatus(int statusId) async {
  final response = await http.get(Uri.parse("$apiUrl/sta/$statusId"));
  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List)
        .map((e) => ListPost.fromJson(e))
        .toList();
  } else {
    throw Exception('Fail to load API');
  }
}

Future<Post> fetchData(int id) async {
  final response = await http.get(Uri.parse("$apiUrl/$id"));
  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Fail to load API');
  }
}

Future<Post> updateStatusPost(int id, int postStatusId) async {
  final response = await http.put(Uri.parse("$apiUrl/$id?status=$postStatusId"));

  if (response.statusCode == 200) {
    //print(response.body);
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Fail to post DemoApi');
  }
}

Future<List<Post>> deletePost(int id) async {
  final response = await http.delete(Uri.parse("$apiUrl/$id"));
  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List)
        .map((e) => Post.fromJson(e))
        .toList();
  } else {
    throw Exception('Fail to load DemoApi');
  }
}
