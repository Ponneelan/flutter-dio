import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:theme/Screens/secondpage.dart';
import 'package:theme/model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color light = Colors.amber;
  Color dark = Colors.blue;

  // void GetRes() async {
  //   try {
  //     var res = await Dio().get("http://127.0.0.1:5000/index/10");
  //     print(res.data['age'].toString());
  //     //return res;
  //   } catch (e) {
  //     print(e);
  //     //return e;
  //   }
  // }

  // var options =
  //     BaseOptions(baseUrl: '', sendTimeout: 5000, receiveTimeout: 3000);

  // var dio = Dio(options);

  // void getres() async {
  //   var res = dio.request('');
  //   options:
  //   Options(method: 'GET');
  //   print(res);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Theme App'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => DataPage())));
            },
            child: const Text('Click')),
      ),
    ));
  }
}
