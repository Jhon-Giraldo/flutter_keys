import 'package:demo_keys/pages/unique_keys/widgets/box_color_widget.dart';
import 'package:flutter/material.dart';

class FailedUniqueKeys extends StatefulWidget {
  const FailedUniqueKeys({super.key});

  @override
  State<FailedUniqueKeys> createState() => _FailedUniqueKeysState();
}

class _FailedUniqueKeysState extends State<FailedUniqueKeys> {
  late List<Widget> children;

  @override
  void initState() {
    super.initState();
    children = [
      const BoxColorWidget(text: '1'),
      const BoxColorWidget(text: '2'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => reorderBox()),
    );
  }

  void reorderBox() {
    setState(() {
      final child = children.removeAt(0);
      children.insert(1, child);
    });
  }
}
