// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:v2_project/components/themes/my_theme.dart';
import 'package:v2_project/screens/register_screen.dart';
import 'package:v2_project/screens/register_test_dio.dart';

import 'home.dart';

void main() {
  runApp(const SellerApp());
}

class SellerApp extends StatelessWidget {
  const SellerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SellerApp',
      theme: myTheme,
      getPages: [
        GetPage(name: '/', page: () => Home(), children: [
          GetPage(
            name: '/registerscreen',
            page: () => Register(),
          )
        ]),
      ],
    );
  }
}
