class Employee {
  final String empNo;
  final String empName;
  final String branch;

  Employee({
    required this.empNo,
    required this.empName,
    required this.branch,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      empNo: json["EMP_NO"] ?? "",
      empName: json["EMP_NAME"] ?? "",
      branch: json["BRANCH"] ?? "",
    );
  }
}
