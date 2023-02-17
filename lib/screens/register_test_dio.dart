import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class CepScreen extends StatefulWidget {
  const CepScreen({super.key});

  @override
  _CepScreenState createState() => _CepScreenState();
}

class _CepScreenState extends State<CepScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cepController = TextEditingController();
  String _address = "";
  final Dio _dio = Dio();

  _searchCep(String cep) async {
    final response = await _dio.get("https://viacep.com.br/ws/$cep/json/");
    if (response.statusCode == 200) {
      setState(() {
        _address = "${response.data["logradouro"]}, "
            "${response.data["bairro"]}, "
            "${response.data["localidade"]} - "
            "${response.data["uf"]}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de CEP"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _cepController,
              decoration: InputDecoration(labelText: "CEP"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value?.length != 8) {
                  return "CEP inválido";
                }
                return null;
              },
            ),
            ElevatedButton(
              child: const Text("Buscar"),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _searchCep(_cepController.text);
                }
              },
            ),
            Text(_address),
          ],
        ),
      ),
    );
  }
}
