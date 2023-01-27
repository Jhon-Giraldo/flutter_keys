import 'package:flutter/material.dart';

class FailedStorageKeys extends StatefulWidget {
  const FailedStorageKeys({super.key});

  @override
  State<FailedStorageKeys> createState() => _FailedStorageKeysState();
}

class _FailedStorageKeysState extends State<FailedStorageKeys> {
  final List<Person> myList = [
    // Person('Pedro', 2, 'Masculino'),
    Person('Maria', 3, 'Femenino'),
    Person('Juan', 5, 'No Binario'),
    Person('Mateo', 5, 'Masculino'),
    Person('Rodolfo', 2, 'Masculino'),
    Person('Julio', 3, 'Femenino'),
    Person('Antonio', 5, 'No Binario'),
    Person('Dolph', 5, 'Masculino'),
    Person('Santiago', 2, 'Masculino'),
    Person('Roberto', 3, 'Femenino'),
    Person('Justin', 5, 'No Binario'),
    Person('Mia', 5, 'Masculino'),
    Person('Antony', 2, 'Masculino'),
    Person('Felipe', 3, 'Femenino'),
    Person('Duban', 5, 'No Binario'),
    Person('Raul', 5, 'Masculino'),
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
                  subtitle:
                      Text("Edad: ${person.edad} Genero: ${person.genero}"),
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
