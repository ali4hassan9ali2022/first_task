import 'package:first_task/Modules/Home/home_controller.dart';
import 'package:first_task/Utilities/strings.dart';
import 'package:first_task/Widgets/custom_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends StateMVC<HomeScreenBody> {
  late HomeController _controller;

  _HomeScreenBodyState() : super(HomeController()) {
    _controller = controller as HomeController;
  }

  @override
  void initState() {
    super.initState();
    _controller.fetchEmployeeData();
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
            _controller.buildBody(controller: _controller),
            SizedBox(height: 16.h),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                CustomButtonsWidget(
                  title: Strings.kTitleOne,
                  iconData: Icons.home,
                ),
                SizedBox(height: 16.h),
                CustomButtonsWidget(
                  title: Strings.kTitleTwo,
                  iconData: Icons.search,
                ),
                SizedBox(height: 16.h),
                CustomButtonsWidget(
                  title: Strings.kTitleThree,
                  iconData: Icons.person,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
