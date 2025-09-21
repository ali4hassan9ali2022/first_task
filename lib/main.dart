import 'package:first_task/Modules/Home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstTask());
}

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}