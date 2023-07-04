part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    @Default([]) List<EmployeeModel> employess,
  }) = _EmployeeState;
}
