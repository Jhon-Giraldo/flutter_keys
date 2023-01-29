// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demo_keys/pages/global_keys/home_values_keys_page.dart';
import 'package:demo_keys/pages/object_keys/home_values_keys_page.dart';
import 'package:demo_keys/pages/page_storage_key/home_values_keys_page.dart';
import 'package:demo_keys/pages/unique_keys/home_values_keys_page.dart';
import 'package:demo_keys/pages/values_keys/home_values_keys_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeValuesKeys())));
              },
              child: const KeyName(
                keyTextName: 'ValueKey',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeObjectKeys())));
              },
              child: const KeyName(keyTextName: 'ObjectKey'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeUniqueKeys())));
              },
              child: const KeyName(keyTextName: 'UniqueKey'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeGlobalKeys())));
              },
              child: const KeyName(keyTextName: 'GlobalKey'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeStorageKeys())));
              },
              child: const KeyName(keyTextName: 'PageStorageKey'),
            ),
          ],
        ),
      ),
    );
  }
}

class KeyName extends StatelessWidget {
  const KeyName({super.key, required this.keyTextName});

  final String keyTextName;

  @override
  Widget build(BuildContext context) {
    return Text(
      keyTextName,
      style: const TextStyle(fontSize: 21),
    );
  }
}
