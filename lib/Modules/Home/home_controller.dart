import 'package:first_task/Models/Empoyee_model.dart';
import 'package:first_task/Modules/Home/HomeDataHandler.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomeController extends ControllerMVC with ChangeNotifier {
  static late HomeController _this;
  static HomeController get con => _this;

  HomeController() {
    _this = this;
  }

  EmployeeModel? employee;
  String? error;
  bool isLoading = false;

  Future<void> getEmployeeData() async {
    isLoading = true;
    notifyListeners();

    final result = await Homedatahandler.fetchData();

    result.fold(
      (err) {
        error = err;
        employee = null;
      },
      (emp) {
        employee = emp;
        error = null;
      },
    );

    isLoading = false;
    notifyListeners();
  }
}
