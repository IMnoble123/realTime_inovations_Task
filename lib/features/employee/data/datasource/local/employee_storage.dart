import 'package:employee_data_app/features/employee/data/models/employee_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class EmployeeStorage {
  late final Box<EmployeeModel> employeeBox;

  Future<List<EmployeeModel>> openEmployeeDB();

  Future<List<EmployeeModel>> addEmployee(EmployeeModel model);

  Future<List<EmployeeModel>> updateEmployee(int index, EmployeeModel model);

  Future<List<EmployeeModel>> deleteEmployee(int index);
}
