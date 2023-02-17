import 'package:flutter/material.dart';
import 'package:v2_project/components/sections/loginpage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              LoginPage(),
            ],
          ),
        ),
      ),
    );
  }
}
