import 'package:flutter/material.dart';

class FailedGlobalKeys extends StatefulWidget {
  const FailedGlobalKeys({super.key});

  @override
  State<FailedGlobalKeys> createState() => _FailedGlobalKeysState();
}

class _FailedGlobalKeysState extends State<FailedGlobalKeys> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
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
    );
  }
}
