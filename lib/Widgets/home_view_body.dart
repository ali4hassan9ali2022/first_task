import 'package:first_task/Modules/Home/home_controller.dart';
import 'package:first_task/Utilities/app_helper.dart';
import 'package:first_task/Utilities/strings.dart';
import 'package:first_task/Widgets/custom_card_widget.dart';
import 'package:first_task/Widgets/custom_field_widget.dart';
import 'package:first_task/Widgets/custom_shimmer_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () =>
          Provider.of<HomeController>(context, listen: false).getEmployeeData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
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
            controller.isLoading
                ? ListView(
                    shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                  children: [
                    CustomShimmerFieldWidget(),
                    SizedBox(height: 6.h),
                    CustomShimmerFieldWidget(),
                    SizedBox(height: 6.h),
                    CustomShimmerFieldWidget(),
                  ],
                )
                : controller.error != null
                ? Text("Error: ${controller.error}")
                : controller.employee != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBranchFieldWidget(
                        employeeModel: controller.employee!,
                      ),
                      SizedBox(height: 6.h),
                      CustomNameFieldWidget(
                        employeeModel: controller.employee!,
                      ),
                      SizedBox(height: 6.h),
                      CustomNumberFieldWidget(
                        employeeModel: controller.employee!,
                      ),
                    ],
                  )
                : const Text("No data available"),

            SizedBox(height: 16.h),
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
