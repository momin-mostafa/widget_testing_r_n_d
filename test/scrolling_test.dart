import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing_r_n_d/scroll_testing_widget.dart';

void main() {
  group('Scrolling Widget Testing', () {
    var bookTitles = ['bookTitles', 'hello', 'world'];
    testWidgets('Should not scroll', (WidgetTester tester) async {
     await tester.pumpWidget(
        MaterialApp(
          home: ScrollTestingWidget(
            bookTitles: bookTitles,
          ),
        ),
      );
     await tester.drag(find.byType(ListView), const Offset(0, -300));
     await tester.pump();

     final firstBookFinder = find.text('Book Name : bookTitles');
     
     expect(firstBookFinder, findsOneWidget);


    });
  });
}
