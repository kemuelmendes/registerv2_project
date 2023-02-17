import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v2_project/components/sections/buttons.dart';
import 'package:v2_project/components/sections/division.dart';

class BoxCard extends StatefulWidget {
  const BoxCard({super.key});

  @override
  State<BoxCard> createState() => _BoxCardState();
}

class _BoxCardState extends State<BoxCard> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 250,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26),
          topRight: Radius.circular(26),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Image.asset(
              'images/estacaocap.png',
            ),
          ),
          const SizedBox(
            width: 400,
            child: Padding(
              padding: EdgeInsets.only(
                right: 31,
                left: 32,
                top: 30,
              ),
              child: Text(
                'Para entrar, informe algum dos dados abaixo:',
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 4.54, right: 98),
                child: Text(
                  'Telefone, email ou CPF',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32, left: 32),
            child: TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () => Get.toNamed('/registerscreen'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'Continuar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          const Division(),
          const SizedBox(
            height: 22,
          ),
          const Buttons(),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                onPressed: () => Get.toNamed('/registerscreen'),
                child: const Text(
                  'Criar conta',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(87, 90, 106, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
