import 'package:employee_data_app/core/extenstions/context_extenstion.dart';
import 'package:employee_data_app/features/employee/data/models/employee_model.dart';
import 'package:employee_data_app/core/shared/fonts/font_constant.dart';
import 'package:employee_data_app/features/employee/presentation/bloc/employee_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/gen/colors.gen.dart';
import '../../../../core/gen/fonts.gen.dart';
import '../../../../core/shared/constants/string_constants.dart';
import '../../../../core/shared/fonts/size_config.dart';
import '../../../../core/shared/text_widgets/build_text.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({super.key, this.index, this.model});

  final int? index;
  final EmployeeModel? model;

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();

  double height = 0.0;
  double width = 0.0;
  String selectedTime = "";

  List<String> roleList = [
    'Product Designer',
    'Flutter Developer',
    'QA Tester',
    'Product Owner',
  ];

  @override
  void initState() {
    fullNameController.text = widget.model?.name ?? '';
    roleController.text = widget.model?.role ?? '';
    fromDateController.text = widget.model?.fromDate ?? '';
    toDateController.text = widget.model?.toDate ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorName.colorWhite,
      appBar: appbarWidget(),
      body: _createBody(),
    ));
  }

  AppBar appbarWidget() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorName.colorPrimary,
      elevation: 0,
      title: Column(
        children: [
          Row(
            children: [
              BuildText(
                text: StringConstants.employeeDetails,
                family: FontFamily.robotoMedium,
                fontSize: 10.0.medium18px(),
                color: ColorName.colorWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createBody() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 4.5),
          child: Column(
            children: [
              SizedBox(height: height * 5),
              BuildLoginTextFieldBorder(
                textWidth: width,
                maxLines: 1,
                containerWidth: width * 100,
                keyBoardType: TextInputType.name,
                controller: fullNameController,
                colorDecoration: ColorName.colorTextFormField,
                label: StringConstants.name,
                prefixIcon: Assets.icons.personIcon.image(),
              ),
              SizedBox(height: height * 3),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => SizedBox(
                      height: 150,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Center(child: roleListWiget()),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
                child: BuildLoginTextFieldBorder(
                  enabled: false,
                  textWidth: width,
                  maxLines: 1,
                  containerWidth: width * 100,
                  keyBoardType: TextInputType.name,
                  controller: roleController,
                  colorDecoration: ColorName.colorTextFormField,
                  label: 'Select role',
                  prefixIcon: Assets.icons.typeIcon.image(),
                  suffixIcon: Assets.icons.dropdawnIcon.image(),
                ),
              ),
              // _dropDawnWidget(),
              SizedBox(height: height * 3),
              rowWidget(),
            ],
          ),
        ),
        submitButton()
      ],
    );
  }

  Widget rowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: dateSelector()),
        Expanded(child: Assets.icons.arrowrightIcon.image()),
        Expanded(child: toDateSelector()),
      ],
    );
  }

  Widget dateSelector() {
    return InkWell(
      onTap: () {
        fromDate();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: 162,
        decoration: const BoxDecoration(
          color: ColorName.colorTextFormField,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.icons.calanderIcon.image(),
            SizedBox(width: width * 3.5),
            BuildText(
              text: fromDateController.text,
              family: FontFamily.robotoRegular,
              fontSize: 10.0.small12px(),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  fromDate() async {
    final datePicker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 100)),
      lastDate: DateTime.now(),
    );
    if (datePicker == null) {
      return;
    } else {
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      selectedTime = formatter.format(datePicker);
      fromDateController.text = selectedTime;
      setState(() {});
    }
  }

  toDate() async {
    final datePicker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 100)),
      lastDate: DateTime.now(),
    );
    if (datePicker == null) {
      return;
    } else {
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      selectedTime = formatter.format(datePicker);
      toDateController.text = selectedTime;
      setState(() {});
    }
  }

  Widget toDateSelector() {
    return InkWell(
      onTap: () {
        toDate();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: 162,
        decoration: const BoxDecoration(
          color: ColorName.colorTextFormField,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.icons.calanderIcon.image(),
            SizedBox(width: width * 3.5),
            BuildText(
              text: toDateController.text,
              family: FontFamily.robotoRegular,
              fontSize: 10.0.small12px(),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  Widget submitButton() {
    return Positioned(
      bottom: 0,
      left: 190,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 64,
          width: 428,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: BuildText(
                  text: 'Cancel',
                  color: ColorName.colorPrimary,
                  fontSize: 10.0.small14px(),
                  family: FontFamily.robotoMedium,
                ),
              ),
              SizedBox(width: width * 10),
              InkWell(
                onTap: () {
                  onSaveLogic(context);
                },
                child: Container(
                  height: 40,
                  width: 73,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: ColorName.colorPrimary),
                  child: Center(
                    child: BuildText(
                      text: 'Save',
                      color: ColorName.colorWhite,
                      fontSize: 10.0.small14px(),
                      family: FontFamily.robotoMedium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onSaveLogic(BuildContext context) async {
    final _name = fullNameController.text.trim();
    final _role = roleController.text.trim();
    final _fromDate = fromDateController.text.trim();
    final _toDate = toDateController.text.trim();
    if (_name.isEmpty || _role.isEmpty || _fromDate.isEmpty) {
      context.showSnack('Fill the form ! Brefore submit');
      return;
    }
    final _employee = EmployeeModel(name: _name, role: _role, fromDate: _fromDate, toDate: _toDate);
    if (widget.index == null) {
      context.read<EmployeeBloc>().add(EmployeeEvent.addEmployee(_employee));
    } else {
      context.read<EmployeeBloc>().add(EmployeeEvent.updateEmployee(widget.index!, _employee));
    }
    _employee.dispose();
    context.pop();
    context.showSnack('Employee details uploaded');
  }

  Widget roleListWiget() {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Divider(),
      itemCount: roleList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            roleController.text = roleList[index];
            Navigator.pop(context);
          },
          child: Column(
            children: [
              BuildText(
                text: roleList[index],
                color: Colors.black,
                fontSize: 10.0.medium16px(),
                family: FontFamily.robotoRegular,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    [fullNameController, roleController, fromDateController, toDateController].map((e) => e.dispose());
    super.dispose();
  }
}
