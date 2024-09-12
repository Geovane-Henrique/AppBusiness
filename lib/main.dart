import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/view/home_view.dart';

void main() {
  runApp(const init());
}

class init extends StatelessWidget {
  const init({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: home_view(),
    );
  }
}
