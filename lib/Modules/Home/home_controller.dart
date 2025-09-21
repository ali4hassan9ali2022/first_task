import 'package:first_task/Models/Empoyee_model.dart';
import 'package:first_task/Modules/Home/HomeDataHandler.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomeController extends ControllerMVC {
  EmployeeModel? employee;
  String? error;
  bool isLoading = false;

  Future<void> getEmployeeData() async {
    setState(() {
      isLoading = true;
      error = null;
    });

    final result = await Homedatahandler.fetchData();

    result.fold(
      (err) {
        setState(() {
          error = err;
          employee = null;
          isLoading = false;
        });
      },
      (emp) {
        setState(() {
          employee = emp;
          error = null;
          isLoading = false;
        });
      },
    );
  }
}
