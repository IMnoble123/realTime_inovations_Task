import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'employee_data.g.dart';

@HiveType(typeId: 1)
class EmployeeModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String role;
  @HiveField(3)
  final String fromDate;
  @HiveField(4)
  final String toDate;

  EmployeeModel({
    required this.name,
    required this.role,
    required this.fromDate,
    required this.toDate,
  });

  @mustCallSuper
  void dispose() {
    if (kFlutterMemoryAllocationsEnabled) {
      MemoryAllocations.instance.dispatchObjectDisposed(object: this);
    }
  }
}
