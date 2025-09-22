import 'package:first_task/Utilities/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoWidget extends StatelessWidget {
  const CustomInfoWidget({
    super.key,
    required this.title,
    required this.iconData,
  });
  final String title;
  final IconData iconData;
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
              Icon(iconData, color: AppColor.kPrimaryColor, size: 30.sp),
              SizedBox(width: 8.w),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
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
