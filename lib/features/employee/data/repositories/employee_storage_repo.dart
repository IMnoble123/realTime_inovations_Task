import 'package:employee_data_app/features/employee/data/datasource/local/employee_storage.dart';
import 'package:employee_data_app/features/employee/data/models/employee_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EmployeeStorageRepo extends EmployeeStorage {
  @override
  Future<List<EmployeeModel>> openEmployeeDB() async {
    employeeBox = await Hive.openBox<EmployeeModel>('employee_data');
    return employeeBox.values.toList();
  }

  @override
  Future<List<EmployeeModel>> addEmployee(EmployeeModel model) async {
    await employeeBox.add(model);
    return employeeBox.values.toList();
  }

  @override
  Future<List<EmployeeModel>> updateEmployee(int index, EmployeeModel model) async {
    await employeeBox.putAt(index, model);
    return employeeBox.values.toList();
  }

  @override
  Future<List<EmployeeModel>> deleteEmployee(int index) async {
    await employeeBox.deleteAt(index);
    return employeeBox.values.toList();
  }
}
