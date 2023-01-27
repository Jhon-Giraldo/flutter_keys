import 'package:demo_keys/pages/unique_keys/success_unique_keys.dart';
import 'package:flutter/material.dart';

import 'failed_unique_keys.dart';

class HomeUniqueKeys extends StatefulWidget {
  const HomeUniqueKeys({super.key});

  @override
  State<HomeUniqueKeys> createState() => _HomeUniqueKeysState();
}

class _HomeUniqueKeysState extends State<HomeUniqueKeys> {
  int currentPage = 0;

  final List<Widget> pages = const [FailedUniqueKeys(), SuccessUniqueKeys()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unique Keys'),
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.error), label: 'Failed'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Success')
        ],
      ),
    );
  }
}
