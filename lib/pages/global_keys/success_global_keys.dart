import 'package:flutter/material.dart';

class SuccessGlobalKeys extends StatefulWidget {
  const SuccessGlobalKeys({super.key});

  @override
  State<SuccessGlobalKeys> createState() => _SuccessGlobalKeysState();
}

class _SuccessGlobalKeysState extends State<SuccessGlobalKeys> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Column(children: [
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
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.deepPurple,
            onPressed: () {
              if (!formKey.currentState!.validate()) {
                return;
              }
              print('Todo esta bien');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: const Text(
                'Validar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
