import 'package:first_task/Utilities/strings.dart';
import 'package:first_task/Widgets/custom_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
                CustomFieldWidget(),
                SizedBox(height: 6.h),
                CustomFieldWidget(),
                SizedBox(height: 6.h),
                CustomFieldWidget(),
              ],
            ),
            SizedBox(height: 16.h),
            // CustomCardWidget(),
          ],
        ),
      ),
    );
  }
}
