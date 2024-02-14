import 'package:flutter/material.dart';
import 'pages/first_splash.dart';

void main() {
  runApp(const SevenDays());
}

class SevenDays extends StatelessWidget {
  const SevenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstSplash(),
    );
  }
}
