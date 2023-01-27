import 'package:demo_keys/pages/values_keys/success_values_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verificar contenido', (WidgetTester tester) async {
    final nameIsHidden = false;
    final keyName = ValueKey('nombre');
    final keyEmail = ValueKey('correo');

    await tester.pumpWidget(MaterialApp(
      home: SuccessValuesKeys(),
    ));

    //Verify that the TextField for 'Name' is visible
    expect(find.byKey(keyName), findsOneWidget);

    //Verify that the TextField for 'Email' is visible
    expect(find.byKey(keyEmail), findsOneWidget);

    //Verify that the FloatingActionButton is visible
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
