import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _complementController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  final Dio _dio = Dio();

  _searchCep(String cep) async {
    try {
      final response = await _dio.get("https://viacep.com.br/ws/$cep/json/");
      if (response.statusCode == 200) {
        print(response.data["logradouro"]);
        setState(() {
          _addressController.text = response.data["logradouro"];
          _streetController.text = response.data["bairro"];
          _complementController.text = response.data["complemento"];
        });
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 13,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'CEP',
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: TextFormField(
                  controller: _cepController,
                  validator: (value) {
                    if (value?.length != 8) {
                      return 'CEP inválido';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    if (value.length == 8) {
                      _searchCep(value);
                    }
                  },
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(247, 147, 30, 1.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Logradouro',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: TextFormField(
                      controller: _addressController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(247, 147, 30, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'Bairro',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 48,
                        child: TextFormField(
                          controller: _streetController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromRGBO(247, 147, 30, 1.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'Número',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        height: 48,
                        child: TextFormField(
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromRGBO(247, 147, 30, 1.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Complemento (opcional)',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: TextFormField(
                      controller: _complementController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromRGBO(247, 147, 30, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed('/'),
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
            ],
          ),
        ),
      ),
    );
  }
}
