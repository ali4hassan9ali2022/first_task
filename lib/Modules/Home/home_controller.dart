import 'package:first_task/Models/Empoyee_model.dart';
import 'package:first_task/Modules/Home/HomeDataHandler.dart';
import 'package:first_task/Widgets/custom_Info_widget.dart';
import 'package:first_task/Widgets/custom_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

enum HomeState { idle, loading, success, error }

class HomeController extends ControllerMVC {
  EmployeeModel? employee;
  String? error;
  HomeState homeState = HomeState.idle;

  Future<void> fetchEmployeeData() async {
    setState(() {
      homeState = HomeState.loading;
      error = null;
    });

    final result = await Homedatahandler.fetchData();

    result.fold(
      (err) {
        setState(() {
          error = err;
          employee = null;
          homeState = HomeState.error;
        });
      },
      (emp) {
        setState(() {
          employee = emp;
          error = null;
          homeState = HomeState.success;
        });
      },
    );
  }

  Widget buildBody({required HomeController controller}) {
    switch (controller.homeState) {
      case HomeState.loading:
        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            CustomShimmerWidget(),
            SizedBox(height: 6.h),
            CustomShimmerWidget(),
            SizedBox(height: 6.h),
            CustomShimmerWidget(),
          ],
        );

      case HomeState.error:
        return Text("Error: ${controller.error}");

      case HomeState.success:
        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            CustomInfoWidget(
              title: controller.employee!.branch,
              iconData: Icons.home,
            ),
            SizedBox(height: 6.h),
            CustomInfoWidget(
              title: controller.employee!.empName,
              iconData: Icons.person,
            ),
            SizedBox(height: 6.h),
            CustomInfoWidget(
              title: controller.employee!.empNo,
              iconData: Icons.numbers,
            ),
          ],
        );

      case HomeState.idle:
        return const Text("No data available");
    }
  }
}
