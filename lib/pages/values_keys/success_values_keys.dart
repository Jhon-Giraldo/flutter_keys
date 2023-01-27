import 'package:flutter/material.dart';

class SuccessValuesKeys extends StatefulWidget {
  const SuccessValuesKeys({super.key});

  @override
  State<SuccessValuesKeys> createState() => _SuccessValuesKeysState();
}

class _SuccessValuesKeysState extends State<SuccessValuesKeys> {
  bool nameIsHidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!nameIsHidden)
                const TextField(
                  key: ValueKey('nombre'),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre',
                  ),
                ),
              const TextField(
                key: ValueKey('correo'),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            nameIsHidden = !nameIsHidden;
          });
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
