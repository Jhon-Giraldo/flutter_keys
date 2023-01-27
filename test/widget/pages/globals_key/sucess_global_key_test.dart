import 'package:demo_keys/pages/global_keys/success_global_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verificar si existe un widget con un formKey',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SuccessGlobalKeys(),
    ));

    expect(find.byKey(formKey), findsOneWidget);
  });
}
