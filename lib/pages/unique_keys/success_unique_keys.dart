import 'package:demo_keys/pages/unique_keys/widgets/box_color_widget.dart';
import 'package:flutter/material.dart';

class SuccessUniqueKeys extends StatefulWidget {
  const SuccessUniqueKeys({super.key});

  @override
  State<SuccessUniqueKeys> createState() => _SuccessUniqueKeysState();
}

class _SuccessUniqueKeysState extends State<SuccessUniqueKeys> {
  late List<Widget> children;
  final key1 = UniqueKey();
  final key2 = UniqueKey();

  @override
  void initState() {
    super.initState();
    print("key1 : $key1");
    print("key2 : $key2");

    children = [
      BoxColorWidget(key: key1, text: '1'),
      BoxColorWidget(key: key2, text: '2'),
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
