import 'package:first_task/Models/Empoyee_model.dart';
import 'package:first_task/Utilities/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBranchFieldWidget extends StatelessWidget {
  const CustomBranchFieldWidget({super.key, required this.employeeModel});
  final EmployeeModel employeeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 1,
              offset: Offset(0, 1),
              blurStyle: BlurStyle.inner,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.home, color: AppColor.kPrimaryColor, size: 30.sp),
              SizedBox(width: 8.w),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  employeeModel.branch,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,

                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNameFieldWidget extends StatelessWidget {
  const CustomNameFieldWidget({super.key, required this.employeeModel});
  final EmployeeModel employeeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 1,
              offset: Offset(0, 1),
              blurStyle: BlurStyle.inner,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.home, color: AppColor.kPrimaryColor, size: 30.sp),
              SizedBox(width: 8.w),
              Flexible(
                child: Text(
                  employeeModel.empName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNumberFieldWidget extends StatelessWidget {
  const CustomNumberFieldWidget({super.key, required this.employeeModel});
  final EmployeeModel employeeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 1,
              offset: Offset(0, 1),
              blurStyle: BlurStyle.inner,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.home, color: AppColor.kPrimaryColor, size: 30.sp),
              SizedBox(width: 8.w),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  employeeModel.empNo,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16.sp,

                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
