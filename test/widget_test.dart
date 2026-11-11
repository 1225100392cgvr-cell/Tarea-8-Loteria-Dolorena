import 'package:flutter_test/flutter_test.dart';
import 'package:loteria/main.dart';

void main() {
  testWidgets('La app muestra la tabla de 4x4 y el botón para cantar', (tester) async {
    await tester.pumpWidget(const LoteriaApp());
    expect(find.text('Loteria Dolorena'), findsOneWidget);
    expect(find.text('Toca Cantar para empezar'), findsOneWidget);
    expect(find.text('Cantar siguiente carta'), findsOneWidget);
  });

  testWidgets('Al cantar una carta cambia el texto de la última carta', (tester) async {
    await tester.pumpWidget(const LoteriaApp());
    await tester.tap(find.text('Cantar siguiente carta'));
    await tester.pump();
    expect(find.text('Toca Cantar para empezar'), findsNothing);
  });
}
