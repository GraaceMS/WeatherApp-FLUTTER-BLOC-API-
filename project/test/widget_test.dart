import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart'; // Certifique-se de importar a biblioteca
import 'package:project/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Crie uma Position mockada para usar no teste
    // final Position mockPosition = Position(
    //   latitude: 37.4219983,
    //   longitude: -122.084,
    //   timestamp: DateTime.now(),
    //   altitude: 0.0,
    //   accuracy: 0.0,
    //   heading: 0.0,
    //   speed: 0.0,
    //   speedAccuracy: 0.0,
    //   altitudeAccuracy: 0.0, // Adicionei altitudeAccuracy
    //   headingAccuracy: 0.0, // Adicionei headingAccuracy
    // );

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
