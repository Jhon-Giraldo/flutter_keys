import 'package:demo_keys/pages/home_page.dart';
import 'package:demo_keys/pages/page_storage_key/success_storage_keys.dart';
import 'package:flutter/material.dart';

import 'failed_storage_keys.dart';

class HomeStorageKeys extends StatefulWidget {
  const HomeStorageKeys({super.key});

  @override
  State<HomeStorageKeys> createState() => _HomeStorageKeysState();
}

class _HomeStorageKeysState extends State<HomeStorageKeys> {
  final PageStorageBucket _bucket = PageStorageBucket();
  int currentPage = 0;

  final List<Widget> pages = const [
    FailedStorageKeys(),
    SuccessStorageKeys(
      key: PageStorageKey('successStorageKey'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage Keys'),
      ),
      body: PageStorage(
        bucket: _bucket,
        child: pages[currentPage],
      ),
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
