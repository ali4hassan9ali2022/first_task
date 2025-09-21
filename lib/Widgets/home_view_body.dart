import 'package:first_task/Modules/Home/home_controller.dart';
import 'package:first_task/Utilities/app_helper.dart';
import 'package:first_task/Utilities/strings.dart';
import 'package:first_task/Widgets/custom_card_widget.dart';
import 'package:first_task/Widgets/custom_field_widget.dart';
import 'package:first_task/Widgets/custom_shimmer_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends StateMVC<HomeViewBody> {
  late HomeController _controller;

  _HomeViewBodyState() : super(HomeController()) {
    _controller = controller as HomeController;
  }

  @override
  void initState() {
    super.initState();
    _controller.getEmployeeData(); 
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Strings.kBranch,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 8.h),
            _controller.isLoading
                ? ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      CustomShimmerFieldWidget(),
                      SizedBox(height: 6),
                      CustomShimmerFieldWidget(),
                      SizedBox(height: 6),
                      CustomShimmerFieldWidget(),
                    ],
                  )
                : _controller.error != null
                ? Text("Error: ${_controller.error}")
                : _controller.employee != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBranchFieldWidget(
                        employeeModel: _controller.employee!,
                      ),
                      SizedBox(height: 6.h),
                      CustomNameFieldWidget(
                        employeeModel: _controller.employee!,
                      ),
                      SizedBox(height: 6.h),
                      CustomNumberFieldWidget(
                        employeeModel: _controller.employee!,
                      ),
                    ],
                  )
                : const Text("No data available"),
            SizedBox(height: 16.h),
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: AppHelper.cards.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: CustomCardWidget(item: AppHelper.cards[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
