import 'package:bloc/bloc.dart';
import 'package:employee_data_app/features/employee/data/datasource/local/employee_storage.dart';
import 'package:employee_data_app/features/employee/data/models/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final EmployeeStorage employeeStorage;
  EmployeeBloc(this.employeeStorage) : super(const EmployeeState()) {
    on<_OpenEmployeeDB>((event, emit) async {
      final employees = await employeeStorage.openEmployeeDB();
      emit(state.copyWith(employess: employees));
    });
    on<_AddEmployee>((event, emit) async {
      final employees = await employeeStorage.addEmployee(event.model);
      emit(state.copyWith(employess: employees));
    });
    on<_UpdateEmployee>((event, emit) async {
      final employees = await employeeStorage.updateEmployee(event.index, event.model);
      emit(state.copyWith(employess: employees));
    });
    on<_DeleteEmployee>((event, emit) async {
      final employees = await employeeStorage.deleteEmployee(event.index);
      emit(state.copyWith(employess: employees));
    });
  }
}
