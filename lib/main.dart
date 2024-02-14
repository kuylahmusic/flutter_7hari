import 'package:flutter/material.dart';
import 'pages/first_signin.dart';
// import 'pages/first_splash.dart';
// import 'package:tujuhhari/pages/first_started.dart';

void main() {
  runApp(const SevenDays());
}

class SevenDays extends StatelessWidget {
  const SevenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstSignIn(),
    );
  }
}
