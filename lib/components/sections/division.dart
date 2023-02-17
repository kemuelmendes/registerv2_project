import 'package:flutter/material.dart';

class Division extends StatelessWidget {
  const Division({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 0.8,
            color: const Color.fromRGBO(109, 112, 133, 1),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'ou entre com',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(109, 112, 133, 1),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 0.8,
            color: const Color.fromRGBO(109, 112, 133, 1),
          ),
        ],
      ),
    );
  }
}
