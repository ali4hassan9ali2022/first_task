import 'package:first_task/Modules/Home/home_controller.dart';
import 'package:first_task/Widgets/build_app_bar.dart';
import 'package:first_task/Widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void initState() {
    super.initState();
  
    Future.microtask(() =>
        Provider.of<HomeController>(context, listen: false).getEmployeeData());
  }
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: HomeViewBody(
        homeController: controller,
      ),
    );
  }
}
