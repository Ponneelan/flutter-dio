import 'package:dio/dio.dart';
import 'dart:convert';

class Data {
  final int age;
  final String name;

  Data({required this.age, required this.name});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(age: json['age'], name: json['name']);
  }
}

var dio = Dio();

Future<Data> getData() async {
  var response = await dio.get('http://127.0.0.1:5000/index/1000vasanth');
  if (response.statusCode == 200) {
    // bool kDebugMode = true;
    // if (kDebugMode) {
    //   print(json.decode(response.toString()));
    // }
    var result = Data.fromJson(json.decode(response.toString()));

    return result;
  } else {
    throw Exception('Oops');
  }
}
