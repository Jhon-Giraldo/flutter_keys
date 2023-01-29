import 'package:flutter/material.dart';

class SuccessGlobalKeys extends StatefulWidget {
  const SuccessGlobalKeys({super.key});

  @override
  State<SuccessGlobalKeys> createState() => _SuccessGlobalKeysState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _SuccessGlobalKeysState extends State<SuccessGlobalKeys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: 'john.doe@gmail.com',
                    labelText: 'Correo Electrónico',
                    prefixIcon: Icon(Icons.alternate_email_rounded)),
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = RegExp(pattern);
                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El formato de correo no es válido';
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  print('Todo esta bien');
                },
                label: const Text(
                  'Validar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
