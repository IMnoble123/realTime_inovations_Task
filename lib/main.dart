import 'package:employee_data_app/features/employee/data/models/employee_model.dart';
import 'package:employee_data_app/features/employee/data/repositories/employee_storage_repo.dart';
import 'package:employee_data_app/features/employee/presentation/bloc/employee_bloc.dart';
import 'package:employee_data_app/features/employee/presentation/pages/employee_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(EmployeeModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => EmployeeBloc(EmployeeStorageRepo())..add(const EmployeeEvent.openEmployeeDB())),
      ],
      child: MaterialApp(
        title: 'Employee Data Blueprint',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ListEmployeeScreen(),
      ),
    );
  }
}
