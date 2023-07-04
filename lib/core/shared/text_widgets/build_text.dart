
import 'package:employee_data_app/core/shared/fonts/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../gen/colors.gen.dart';

class BuildText extends StatelessWidget {
  const BuildText(
      {Key? key,
      this.text = "",
      this.fontSize = 14.0,
      this.color = ColorName.colorPrimary,
      this.weight = FontWeight.w400,
      this.family = 'Roboto',
      this.decoration = TextDecoration.none,
      this.textAlign = TextAlign.start,
      this.maxLines,
      this.overFlow,
      this.lineHeight,
      this.italics = false})
      : super(key: key); 

  final String text;
  final double fontSize;
  final double? lineHeight;
  final Color color;
  final FontWeight weight;
  final TextDecoration decoration;
  final TextAlign textAlign;
  final int? maxLines;
  final bool italics;
  final String? family;
  final TextOverflow? overFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overFlow,
      style: TextStyle(
        fontWeight: weight,
        fontSize: fontSize,
        color: color,
        fontStyle: italics ? FontStyle.italic : FontStyle.normal,
        decoration: decoration,
        fontFamily: family,
        height: lineHeight,
      ),
    );
  }
}

class BuildTextFieldPasswordBorder extends StatefulWidget {
  const BuildTextFieldPasswordBorder({
    Key? key,
    required this.textWidth,
    this.label = '',
    this.maxLines,
    this.maxLength,
    this.suffixIcon,
    required this.containerWidth,
    this.containerHeight = 40,
    required this.keyBoardType,
    this.obscureText = false,
    this.validator,
    this.colorDecoration = const Color(0xFF999999),
    this.textAction = TextInputAction.done,
    this.readOnly = false,
    required this.controller,
    this.textInputFormatter = const <TextInputFormatter>[],
    this.onTap,
    this.enabled = true,
    this.isWorkingHour = false,
    this.isFromBank = false,
    this.onChange,
    this.onEditingComplete,
  }) : super(key: key);

  final double textWidth;
  final double containerWidth;
  final double? containerHeight;
  final String label;
  final int? maxLines;
  final int? maxLength;
  final Widget? suffixIcon;
  final TextInputType keyBoardType;
  final Color colorDecoration;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputAction textAction;
  final List<TextInputFormatter> textInputFormatter;
  final String? Function(String? val)? validator;
  final bool readOnly;
  final void Function()? onTap;
  final bool enabled;
  final bool isWorkingHour;
  final bool isFromBank;
  final Function(String)? onChange;
  final Function()? onEditingComplete;

  @override
  _BuildTextFieldPasswordBorder createState() =>
      _BuildTextFieldPasswordBorder();
}

class _BuildTextFieldPasswordBorder
    extends State<BuildTextFieldPasswordBorder> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.containerWidth,
      height: widget.containerHeight,
      child: TextFormField(
        enabled: widget.enabled,
        controller: widget.controller,
        validator: widget.validator,
        textInputAction: widget.textAction,
        onEditingComplete: widget.onEditingComplete,
        onTap: widget.onTap,
        focusNode: _focusNode,
        keyboardType: widget.keyBoardType,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.colorDecoration)),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.colorDecoration),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.colorDecoration),
            ),
            // suffixText: widget.suffixText ?? "",
            suffixIcon: widget.suffixIcon,
            suffixIconConstraints: const BoxConstraints(minWidth: 20),
            hintText: widget.label,
            hintStyle: TextStyle(
                color: const Color(0xFF999999),
                fontWeight: FontWeight.w400,
                fontSize: widget.textWidth * 4,
                fontFamily: 'Roboto'),
            focusColor: Theme.of(context).primaryColor,
            errorBorder: const OutlineInputBorder()),
        inputFormatters: widget.textInputFormatter,
        onChanged: widget.onChange,
      ),
    );
  }
}

class BuildTextFieldBorderFocusNode extends StatefulWidget {
  const BuildTextFieldBorderFocusNode(
      {Key? key,
      required this.width,
      this.label = '',
      this.suffixText,
      required this.containerWidth,
      this.containerHeight = 40,
      required this.keyBoardType,
      this.obscureText = false,
      this.validator,
      this.textAction = TextInputAction.done,
      this.readOnly = false,
      required this.controller,
      this.textInputFormatter = const <TextInputFormatter>[],
      this.onTap,
      this.focusNode,
      this.enabled = true,
      this.isWorkingHour = false,
      this.onChange})
      : super(key: key);

  final double width;
  final double containerWidth;
  final double? containerHeight;
  final String label;
  final String? suffixText;
  final TextInputType keyBoardType;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputAction textAction;
  final List<TextInputFormatter> textInputFormatter;
  final String? Function(String? val)? validator;
  final bool readOnly;
  final void Function()? onTap;
  final bool enabled;
  final bool isWorkingHour;
  final FocusNode? focusNode;
  final Function(String)? onChange;

  @override
  _BuildTextFieldBorderFocusNode createState() =>
      _BuildTextFieldBorderFocusNode();
}

class _BuildTextFieldBorderFocusNode
    extends State<BuildTextFieldBorderFocusNode> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.containerWidth,
      height: widget.containerHeight,
      child: TextFormField(
        enabled: widget.enabled,
        controller: widget.controller,
        validator: widget.validator,
        textInputAction: widget.textAction,
        onTap: widget.onTap,
        focusNode: widget.focusNode,
        keyboardType: widget.keyBoardType,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 4, left: 8, right: 8),
            border: const OutlineInputBorder(),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.isWorkingHour
                        ? const Color(0xFF999999)
                        : const Color(0xFFCED4DA))),
            focusedBorder: widget.isWorkingHour
                ? const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF999999)))
                : const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: widget.isWorkingHour
                      ? const Color(0xFF999999)
                      : const Color(0xFFCED4DA)),
            ),
            // suffixText: widget.suffixText ?? "",
            suffixIcon: widget.suffixText != null
                ? BuildText(
                    text: widget.suffixText!,
                    color: const Color(0xFF999999),
                    fontSize: widget.width * 3.8,
                    weight: FontWeight.w400,
                  )
                : const SizedBox.shrink(),
            suffixIconConstraints: const BoxConstraints(minWidth: 20),
            hintText: widget.label,
            hintStyle: TextStyle(
                color: const Color(0xFF999999),
                fontWeight: FontWeight.w400,
                fontSize: widget.width * 3.8,
                fontFamily: 'Roboto'),
            focusColor: Theme.of(context).primaryColor,
            errorBorder: const OutlineInputBorder()),
        inputFormatters: widget.textInputFormatter,
        onChanged: widget.onChange,
      ),
    );
  }
}

class BuildTextFieldFocusNode extends StatefulWidget {
  const BuildTextFieldFocusNode(
      {Key? key,
      required this.width,
      this.label = '',
      this.suffixText,
      required this.containerWidth,
      this.containerHeight = 40,
      required this.keyBoardType,
      this.obscureText = false,
      this.validator,
      this.textAction = TextInputAction.done,
      this.readOnly = false,
      required this.controller,
      this.textInputFormatter = const <TextInputFormatter>[],
      this.onTap,
      this.focusNode,
      this.onEditingComplete,
      this.enabled = true,
      this.isWorkingHour = false,
      this.onChange})
      : super(key: key);

  final double width;
  final double containerWidth;
  final double? containerHeight;
  final String label;
  final String? suffixText;
  final TextInputType keyBoardType;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputAction textAction;
  final List<TextInputFormatter> textInputFormatter;
  final String? Function(String? val)? validator;
  final bool readOnly;
  final void Function()? onTap;
  final bool enabled;
  final bool isWorkingHour;
  final FocusNode? focusNode;
  final Function(String)? onChange;
  final Function()? onEditingComplete;

  @override
  _BuildTextFieldFocusNode createState() => _BuildTextFieldFocusNode();
}

class _BuildTextFieldFocusNode extends State<BuildTextFieldFocusNode> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.containerWidth,
      height: widget.containerHeight,
      child: TextFormField(
        onEditingComplete: () {},
        enabled: widget.enabled,
        controller: widget.controller,
        validator: widget.validator,
        textInputAction: widget.textAction,
        onTap: widget.onTap,
        focusNode: widget.focusNode,
        keyboardType: widget.keyBoardType,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 4, left: 8, right: 8),
            suffixIcon: widget.suffixText != null
                ? BuildText(
                    text: widget.suffixText!,
                  )
                : const SizedBox.shrink(),
            suffixIconConstraints: const BoxConstraints(minWidth: 20),
            hintText: widget.label,
            errorBorder: const OutlineInputBorder()),
        inputFormatters: widget.textInputFormatter,
        onChanged: widget.onChange,
      ),
    );
  }
}

class BuildTextFieldBorder extends StatefulWidget {
  const BuildTextFieldBorder({
    Key? key,
    required this.textWidth,
    this.label = '',
    this.maxLines,
    this.maxLength,
    this.suffixIcon,
    required this.containerWidth,
    this.colorDecoration = const Color(0xFF999999),
    this.containerHeight = 40,
    required this.keyBoardType,
    this.obscureText = false,
    this.validator,
    this.textAction = TextInputAction.done,
    this.readOnly = false,
    required this.controller,
    this.textInputFormatter = const <TextInputFormatter>[],
    this.onTap,
    this.enabled = true,
    this.isWorkingHour = false,
    this.isFromBank = false,
    this.onChange,
  }) : super(key: key);

  final double textWidth;
  final double containerWidth;
  final double? containerHeight;
  final String label;
  final Color colorDecoration;
  final int? maxLines;
  final int? maxLength;
  final Widget? suffixIcon;
  final TextInputType keyBoardType;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputAction textAction;
  final List<TextInputFormatter> textInputFormatter;
  final String? Function(String? val)? validator;
  final bool readOnly;
  final void Function()? onTap;
  final bool enabled;
  final bool isWorkingHour;
  final bool isFromBank;
  final Function(String)? onChange;

  @override
  _BuildTextFieldBorder createState() => _BuildTextFieldBorder();
}

class _BuildTextFieldBorder extends State<BuildTextFieldBorder> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.containerWidth,
      height: widget.containerHeight,
      child: TextFormField(
        maxLines: widget.maxLines,
        maxLength: widget.maxLength,
        enabled: widget.enabled,
        controller: widget.controller,
        validator: widget.validator,
        textInputAction: widget.textAction,
        onTap: widget.onTap,
        focusNode: _focusNode,
        keyboardType: widget.keyBoardType,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF999999)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF999999)),
            ),
            // suffixText: widget.suffixText ?? "",
            suffixIcon: widget.suffixIcon,
            suffixIconConstraints: const BoxConstraints(minWidth: 20),
            hintText: widget.label,
            hintStyle: TextStyle(
                color: const Color(0xFF999999),
                fontWeight: FontWeight.w400,
                fontSize: widget.textWidth * 4,
                fontFamily: 'Roboto'),
            focusColor: Theme.of(context).primaryColor,
            errorBorder: const OutlineInputBorder()),
        inputFormatters: widget.textInputFormatter,
        onChanged: widget.onChange,
      ),
    );
  }
}

class BuildLoginTextFieldBorder extends StatefulWidget {
  const BuildLoginTextFieldBorder({
    Key? key,
    required this.textWidth,
    this.label = '',
    this.maxLines,
    this.maxLength,
    this.suffixIcon,
    this.prefixIcon,
    required this.containerWidth,
    this.colorDecoration = const Color(0xFF999999),
    this.containerHeight = 40,
    required this.keyBoardType,
    this.obscureText = false,
    this.validator,
    this.textAction = TextInputAction.done,
    this.readOnly = false,
    required this.controller,
    this.textInputFormatter = const <TextInputFormatter>[],
    this.onTap,
    this.enabled = true,
    this.isWorkingHour = false,
    this.isFromBank = false,
    this.onChange,
  }) : super(key: key);

  final double textWidth;
  final double containerWidth;
  final double? containerHeight;
  final String label;
  final Color colorDecoration;
  final int? maxLines;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType keyBoardType;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputAction textAction;
  final List<TextInputFormatter> textInputFormatter;
  final String? Function(String? val)? validator;
  final bool readOnly;
  final void Function()? onTap;
  final bool enabled;
  final bool isWorkingHour;
  final bool isFromBank;
  final Function(String)? onChange;

  @override
  _BuildLoginTextFieldBorder createState() => _BuildLoginTextFieldBorder();
}

class _BuildLoginTextFieldBorder extends State<BuildLoginTextFieldBorder> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.containerWidth,
      height: widget.containerHeight,
      child: TextFormField(
        maxLines: widget.maxLines,
        maxLength: widget.maxLength,
        enabled: widget.enabled,
        controller: widget.controller,
        validator: widget.validator,
        textInputAction: widget.textAction,
        onTap: widget.onTap,
        focusNode: _focusNode,
        keyboardType: widget.keyBoardType,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
            fillColor: widget.colorDecoration,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            // suffixText: widget.suffixText ?? "",
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            suffixIconConstraints: const BoxConstraints(minWidth: 20),
            hintText: widget.label,
            hintStyle: TextStyle(
                color: ColorName.colorTextFormFieldText,
                fontWeight: FontWeight.w400,
                fontSize: 10.0.small13px(),
                fontFamily: 'Roboto'),
            focusColor: Theme.of(context).primaryColor,
            errorBorder: const OutlineInputBorder()),
        inputFormatters: widget.textInputFormatter,
        onChanged: widget.onChange,
      ),
    );
  }
}

class BuildTextFieldNoBorder extends StatefulWidget {
  const BuildTextFieldNoBorder({
    Key? key,
    required this.textWidth,
    this.label = '',
    this.maxLines,
    this.maxLength,
    this.suffixIcon,
    this.prefixIcon,
    required this.containerWidth,
    this.colorDecoration = const Color(0xFF999999),
    this.containerHeight = 40,
    required this.keyBoardType,
    this.obscureText = false,
    this.validator,
    this.textAction = TextInputAction.done,
    this.readOnly = false,
    required this.controller,
    this.textInputFormatter = const <TextInputFormatter>[],
    this.onTap,
    this.enabled = true,
    this.isWorkingHour = false,
    this.isFromBank = false,
    this.onChange,
  }) : super(key: key);

  final double textWidth;
  final double containerWidth;
  final double? containerHeight;
  final String label;
  final Color colorDecoration;
  final int? maxLines;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType keyBoardType;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputAction textAction;
  final List<TextInputFormatter> textInputFormatter;
  final String? Function(String? val)? validator;
  final bool readOnly;
  final void Function()? onTap;
  final bool enabled;
  final bool isWorkingHour;
  final bool isFromBank;
  final Function(String)? onChange;

  @override
  _BuildTextFieldNoBorder createState() => _BuildTextFieldNoBorder();
}

class _BuildTextFieldNoBorder extends State<BuildTextFieldNoBorder> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.containerWidth,
      height: widget.containerHeight,
      child: TextFormField(
        maxLines: widget.maxLines,
        maxLength: widget.maxLength,
        enabled: widget.enabled,
        controller: widget.controller,
        validator: widget.validator,
        textInputAction: widget.textAction,
        onTap: widget.onTap,
        focusNode: _focusNode,
        keyboardType: widget.keyBoardType,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            contentPadding:const  EdgeInsets.symmetric(vertical: 10),
            // suffixText: widget.suffixText ?? "",
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            suffixIconConstraints: const BoxConstraints(minWidth: 20),
            hintText: widget.label,
            hintStyle: TextStyle(
                color: ColorName.colorTextFormFieldText,
                fontWeight: FontWeight.w400,
                fontSize: 10.0.small13px(),
                fontFamily: 'Roboto'),
            focusColor: Theme.of(context).primaryColor,
            errorBorder: const OutlineInputBorder()),
        inputFormatters: widget.textInputFormatter,
        onChanged: widget.onChange,
      ),
    );
  }
}

