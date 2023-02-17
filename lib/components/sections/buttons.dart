import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlinedButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.resolveWith<Size?>((states) {
              return const Size(48, 48);
            }),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
              (states) {
                return const CircleBorder();
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) {
                return Colors.black;
              },
            ),
          ),
          child: const Icon(
            Icons.apple,
            size: 40,
          ),
          onPressed: () {},
        ),
        Row(
          children: <Widget>[
            OutlinedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith<Size?>((states) {
                  return const Size(48, 48);
                }),
                shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                  (states) {
                    return const CircleBorder();
                  },
                ),
              ),
              child: SizedBox(
                width: 48,
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/google-logo.png',
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
