import 'package:demo_keys/pages/values_keys/success_values_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verificar que existen 2 TextField', (WidgetTester tester) async {
    final keyName = ValueKey('nombre');
    final keyEmail = ValueKey('correo');

    await tester.pumpWidget(const MaterialApp(
      home: SuccessValuesKeys(),
    ));

    //Verifica que exista un widget con keyName
    expect(find.byKey(keyName), findsOneWidget);

    //Verifica que exista un widget con keyEmail
    expect(find.byKey(keyEmail), findsOneWidget);

    ////Verifica que exista un widget de tipo FloatingActionButton
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Verificar que se oculta un TextField',
      (WidgetTester tester) async {
    final keyName = ValueKey('nombre');
    final keyEmail = ValueKey('correo');

    await tester.pumpWidget(const MaterialApp(
      home: SuccessValuesKeys(),
    ));

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    //Verify that the TextField for 'Name' is visible
    expect(find.byKey(keyName), findsNothing);

    //Verify that the TextField for 'Email' is visible
    expect(find.byKey(keyEmail), findsOneWidget);

    //Verify that the FloatingActionButton is visible
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
