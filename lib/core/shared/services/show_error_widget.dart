import 'package:flutter/material.dart';


Widget showErrorMessage(String? message, BuildContext context,
    {String type = ""}) {
  Future.delayed(const Duration(milliseconds: 100), () {
    if (message != null && message.isNotEmpty) {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: type == "" || type == "auth"
                ? const Text("Error")
                : const Text("Success"),
            content: SingleChildScrollView(child: Text(message)),
            actions: <Widget>[
              Builder(builder: (BuildContext outerContext) {
                return TextButton(
                  child: const Text("OK"),
                  onPressed: () async {
                    Navigator.of(context).pop();

                    if (type == "auth") {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                      // Navigator.of(context)
                      //     .pushReplacementNamed(LoginScreen.routeName);
                    }
                  },
                );
              }),
            ],
          );
        },
      );
    }
  });

  return const SizedBox.shrink();
}

Widget showSuccessPasswordChange(
    String? message, BuildContext context, String email) {
  Future.delayed(const Duration(milliseconds: 100), () {
    if (message != null && message.isNotEmpty) {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Success"),
            content: SingleChildScrollView(child: Text(message)),
            actions: <Widget>[
              Builder(builder: (BuildContext outerContext) {
                return TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    // Navigator.of(context).pushReplacementNamed(
                    //     ResetPasswordScreen.routeName,
                    //     arguments: ResetPasswordScreen(email: email));
                  },
                );
              }),
            ],
          );
        },
      );
    }
  });

  return const SizedBox.shrink();
}

Widget showSuccessMessage(
    String? message, BuildContext context, Function() ok) {
  Future.delayed(const Duration(milliseconds: 100), () {
    if (message != null && message.isNotEmpty) {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Success"),
            content: SingleChildScrollView(child: Text(message)),
            actions: <Widget>[
              Builder(builder: (BuildContext outerContext) {
                return TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    ok();
                  },
                );
              }),
            ],
          );
        },
      );
    }
  });

  return const SizedBox.shrink();
}