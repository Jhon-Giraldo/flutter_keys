import 'dart:math';

import 'package:flutter/material.dart';

class BoxColorWidget extends StatefulWidget {
  const BoxColorWidget({super.key, required this.text});

  final String text;

  @override
  State<BoxColorWidget> createState() => _BoxColorWidgetState();
}

class _BoxColorWidgetState extends State<BoxColorWidget> {
  late Color color;

  @override
  void initState() {
    super.initState();
    color = generateColor();
  }

  Color generateColor() {
    final random = Random();

    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: color,
      child: Center(
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
