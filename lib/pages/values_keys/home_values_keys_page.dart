import 'package:demo_keys/pages/values_keys/failed_values_keys.dart';
import 'package:demo_keys/pages/values_keys/success_values_keys.dart';
import 'package:flutter/material.dart';

class HomeValuesKeys extends StatefulWidget {
  const HomeValuesKeys({super.key});

  @override
  State<HomeValuesKeys> createState() => _HomeValuesKeysState();
}

class _HomeValuesKeysState extends State<HomeValuesKeys> {
  int currentPage = 0;
  final List<Widget> pages = const [FailedValuesKeys(), SuccessValuesKeys()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Values Keys'),
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
