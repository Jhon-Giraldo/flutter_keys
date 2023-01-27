import 'package:flutter/material.dart';

class FailedValuesKeys extends StatefulWidget {
  const FailedValuesKeys({super.key});

  @override
  State<FailedValuesKeys> createState() => _FailedValuesKeysState();
}

class _FailedValuesKeysState extends State<FailedValuesKeys> {
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre',
                  ),
                ),
              const TextField(
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
