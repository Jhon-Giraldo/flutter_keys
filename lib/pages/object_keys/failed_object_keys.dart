import 'package:flutter/material.dart';

class FailedObjectKeys extends StatefulWidget {
  const FailedObjectKeys({super.key});

  @override
  State<FailedObjectKeys> createState() => _FailedObjectKeysState();
}

class _FailedObjectKeysState extends State<FailedObjectKeys> {
  final List<Person> myList = [
    Person('Pedro', 2, 'Masculino', '1233'),
    Person('Maria', 3, 'Femenino', '4433'),
    Person('Juan', 5, 'No Binario', '2345'),
    Person('Pedro', 5, 'Masculino', '45777'),
    Person('Martin', 2, 'Masculino', '1233'),
    Person('Arutro', 3, 'Femenino', '4433'),
    Person('Luis', 5, 'No Binario', '2345'),
    Person('Mateo', 5, 'Masculino', '45777'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        padding: const EdgeInsets.only(bottom: 90),
        onReorder: reorderTodos,
        children: myList
            .map((person) => ListTile(
                  key: ValueKey(person.nombre),
                  title: Text(person.nombre!),
                ))
            .toList(),
      ),
    );
  }

  // 1
  void reorderTodos(int oldIndex, int newIndex) {
    // 2
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    // 3
    final item = myList.removeAt(oldIndex);
    setState(() {
      myList.insert(newIndex, item);
    });
  }
}

class Person {
  String? nombre;
  int? edad;
  String? genero;
  String? cedula;
  String? ciudad;

  Person(this.nombre, this.edad, this.genero, this.cedula);
}
