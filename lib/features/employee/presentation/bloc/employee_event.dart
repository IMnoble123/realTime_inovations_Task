part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.openEmployeeDB() = _OpenEmployeeDB;
  const factory EmployeeEvent.addEmployee(EmployeeModel model) = _AddEmployee;
  const factory EmployeeEvent.updateEmployee(int index, EmployeeModel model) = _UpdateEmployee;
  const factory EmployeeEvent.deleteEmployee(int index) = _DeleteEmployee;
}
