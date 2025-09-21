import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Color(0xff4bb3cd),
    leading: Icon(Icons.menu, color: Colors.white),
    title: Text(
      "Transport Inventtory",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
  );
}
