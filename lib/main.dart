import 'package:flutter/material.dart';
import 'package:tujuhhari/pages/first_started.dart';
// import 'pages/first_splash.dart';

void main() {
  runApp(const SevenDays());
}

class SevenDays extends StatelessWidget {
  const SevenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstStarted(),
    );
  }
}
