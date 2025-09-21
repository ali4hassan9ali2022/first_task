import 'package:first_task/Modules/Home/home_controller.dart';
import 'package:first_task/Utilities/app_helper.dart';
import 'package:first_task/Utilities/strings.dart';
import 'package:first_task/Widgets/custom_card_widget.dart';
import 'package:first_task/Widgets/custom_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.homeController});
  final HomeController homeController;
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
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                CustomBranchFieldWidget(
                  employeeModel: homeController.employee!,
                ),
                SizedBox(height: 6.h),
                CustomNameFieldWidget(employeeModel: homeController.employee!),
                SizedBox(height: 6.h),
                CustomNumberFieldWidget(
                  employeeModel: homeController.employee!,
                ),
              ],
            ),
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
