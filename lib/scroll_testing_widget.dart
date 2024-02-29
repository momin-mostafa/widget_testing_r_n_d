import 'package:flutter/material.dart';

class ScrollTestingWidget extends StatelessWidget {
  const ScrollTestingWidget({super.key, required this.bookTitles});

  final List<String> bookTitles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text("Book Name : ${bookTitles[index]}"),
        ),
        itemCount: bookTitles.length,
      ),
    );
  }
}
