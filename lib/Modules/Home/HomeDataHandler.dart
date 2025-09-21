import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:first_task/Models/Empoyee_model.dart';
import 'package:http/http.dart' as http;

class Homedatahandler{
  static Future<Either<String, EmployeeModel>> fetchData() async {
    try {
      const String url = "https://wsapitest.aldrees.com/api/GetWHUserInfo/";
      var response = await http.post(
        Uri.parse(url),
        body: {"empNo": "62210", "vType": ""},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data["Data"] != null && data["Data"].isNotEmpty) {
          final empData = data['Data'][0];
          return Right(EmployeeModel.fromJson(empData));
        } else {
          return const Left("No Data Found");
        }
      } else {
        return Left("Error: ${response.statusCode}");
      }
    } catch (e) {
      return Left("Exception: $e");
    }
  }
}
