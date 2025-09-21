import 'package:first_task/Utilities/strings.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Color(0xff4bb3cd),
    leading: Icon(Icons.menu, color: Colors.white),
    title: Text(
      Strings.kTitleAppBar,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
  );
}
