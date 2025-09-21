import 'package:first_task/Modules/Home/home_controller.dart';
import 'package:first_task/Modules/Home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FirstTask());
}

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => HomeController())],
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          },
        );
      },
    );
  }
}
