import 'package:flutter/material.dart';
import 'package:v2_project/components/sections/box_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: _LoginPage(),
    );
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 53,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: const [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Image(
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,
              image: AssetImage('images/girl.png'),
            ),
          ),
          BoxCard(),
        ],
      ),
    );
  }
}
