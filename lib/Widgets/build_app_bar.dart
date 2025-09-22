import 'package:first_task/Utilities/app_color.dart';

import 'package:first_task/Utilities/strings.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: AppColor.kPrimaryColor,
    iconTheme: const IconThemeData(color: Colors.white),
    title: Text(
      Strings.kTitleAppBar,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
  );
}
