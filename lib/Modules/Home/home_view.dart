import 'package:first_task/Widgets/build_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(),
    );
  }
}
