import 'package:demo_keys/pages/global_keys/success_global_keys.dart';

import 'package:flutter/material.dart';

import 'failed_global_keys.dart';

class HomeGlobalKeys extends StatefulWidget {
  const HomeGlobalKeys({super.key});

  @override
  State<HomeGlobalKeys> createState() => _HomeGlobalKeysState();
}

class _HomeGlobalKeysState extends State<HomeGlobalKeys> {
  int currentPage = 0;
  List<Widget>? pages;

  @override
  void initState() {
    super.initState();

    pages = [const FailedGlobalKeys(), const SuccessGlobalKeys()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Keys'),
      ),
      body: pages![currentPage],
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
