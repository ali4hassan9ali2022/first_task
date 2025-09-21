class EmployeeModel {
  final String empNo;
  final String empName;
  final String branch;

  EmployeeModel({
    required this.empNo,
    required this.empName,
    required this.branch,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      empNo: json["EMP_NO"] ?? "",
      empName: json["EMP_NAME"] ?? "",
      branch: json["BRANCH"] ?? "",
    );
  }
}
