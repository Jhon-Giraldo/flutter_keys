import 'package:demo_keys/pages/global_keys/home_values_keys_page.dart';
import 'package:demo_keys/pages/object_keys/home_values_keys_page.dart';
import 'package:demo_keys/pages/page_storage_key/home_values_keys_page.dart';
import 'package:demo_keys/pages/unique_keys/home_values_keys_page.dart';
import 'package:demo_keys/pages/values_keys/home_values_keys_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'global_keys/failed_global_keys.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeValuesKeys())));
              },
              child: const Text('Value Key'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeObjectKeys())));
              },
              child: const Text('Object Key'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeUniqueKeys())));
              },
              child: const Text('Unique Key'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => HomeGlobalKeys())));
              },
              child: const Text('Global Key'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeStorageKeys())));
              },
              child: const Text('Page Storage Key'),
            ),
          ],
        ),
      ),
    );
  }
}
