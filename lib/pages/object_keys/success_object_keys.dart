import 'package:flutter/material.dart';

class SuccessObjectKeys extends StatefulWidget {
  const SuccessObjectKeys({super.key});

  @override
  State<SuccessObjectKeys> createState() => _SuccessObjectKeysState();
}

class _SuccessObjectKeysState extends State<SuccessObjectKeys> {
  final List<Person> myList = [
    Person('Pedro', 2, 'Masculino'),
    Person('Maria', 3, 'Femenino'),
    Person('Juan', 5, 'No Binario'),
    Person('Pedro', 5, 'Masculino'),
    Person('Martin', 2, 'Masculino'),
    Person('Arutro', 3, 'Femenino'),
    Person('Luis', 5, 'No Binario'),
    Person('Mateo', 5, 'Masculino'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        padding: const EdgeInsets.only(bottom: 90),
        onReorder: reorderTodos,
        children: myList
            .map((person) => ListTile(
                  key: ObjectKey(person),
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

  Person(this.nombre, this.edad, this.genero);
}
