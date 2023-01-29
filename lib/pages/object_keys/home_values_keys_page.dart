import 'package:demo_keys/pages/object_keys/success_object_keys.dart';
import 'failed_object_keys.dart';
import 'package:flutter/material.dart';

class HomeObjectKeys extends StatefulWidget {
  const HomeObjectKeys({super.key});

  @override
  State<HomeObjectKeys> createState() => _HomeObjectKeysState();
}

class _HomeObjectKeysState extends State<HomeObjectKeys> {
  int currentPage = 0;
  final List<Widget> pages = const [FailedObjectKeys(), SuccessObjectKeys()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Object Keys'),
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
