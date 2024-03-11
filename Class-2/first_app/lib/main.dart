import 'package:flutter/material.dart';

import 'package:first_app/widgets/gradient_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
    );
  }
}
