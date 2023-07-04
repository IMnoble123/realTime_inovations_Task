import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldNoOutlines extends StatelessWidget {
  const TextFormFieldNoOutlines({
    Key? key,
    required this.width,
    required this.hint,
    required this.keyBoardType,
    this.obscureText = false,
    this.maxLines = 1,
    this.controller,
    this.error,
    this.onChanged,
    this.suffixIcon,
    validation,
    this.textInputAction,
    this.fontSize = 14,
    required this.autoFocus,
    this.inputFormater = const [],
    required this.isSignUp, required this.isSearch, this.onDone,
    // @required this.validation,
  }) : super(key: key);
  final double width;
  final String hint;
  final double fontSize;
  final String? error;
  final TextInputType keyBoardType;
  final bool obscureText;
  final int maxLines;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool autoFocus;
  final List<TextInputFormatter> inputFormater;

  // final validation;
  final onChanged;
  final suffixIcon;
  final bool isSignUp;
  final bool isSearch;
  final Function(String)? onDone;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormater,
      autofocus: autoFocus,
      textInputAction: textInputAction,
      controller: controller,
      keyboardType: keyBoardType,
      obscureText: obscureText,
      // obscuringCharacter: "●",
      style: TextStyle(
        fontSize: fontSize,
      ),
      maxLines: maxLines,
      // validator: validation,
      decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 10),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: fontSize,
          ),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
          errorText: error),
          
      onChanged: onChanged,
      onFieldSubmitted: onDone!,
    );
  }
}
