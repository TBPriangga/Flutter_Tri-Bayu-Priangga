import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:introductionflutter/10.Soal_Platform_WidgetAndLayout/eksplorasiMaterialDesign/materialDesign_page.dart';

void main() {
  testWidgets('UI Testing for materialDesign', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: materialDesign(),
    ));

    // Verify that the title is displayed.
    expect(find.text("My Flutter App"), findsOneWidget);

    // Verify the list of courses.
    for (final course in [
      "Learn Flutter",
      "Learn ReactJS",
      "Learn Vue JS",
      "Learn Tailwind CSS",
      "Learn UI/UX",
      "Learn Figma",
      "Learn Digital Marketing"
    ]) {
      expect(find.text(course), findsOneWidget);
    }

    // Verify that the "Add" button is displayed.
    expect(find.byIcon(Icons.add), findsOneWidget);

    // Verify the bottom navigation bar items.
    expect(find.text("Favorite"), findsOneWidget);
    expect(find.text("Search"), findsOneWidget);
    expect(find.text("Information"), findsOneWidget);
  });
}
