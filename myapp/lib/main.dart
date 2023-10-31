import 'package:flutter/material.dart';
import 'package:myapp/splash_screen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.dark(background: Colors.transparent)),
      home: splash(),
    );
  }
}
