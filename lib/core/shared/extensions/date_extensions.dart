import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String dateFormat() {
    return DateFormat("yyyy MMMM , dd").format(this);
  }

  String dateWithTime() {
    return DateFormat("yyyy MMMM , dd, HH:mm a").format(this);
  }

  String dateFormatWithHyphen() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String dateFormatWithSlash() {
    return DateFormat('yyyy/MM/dd').format(this);
  }

  String ordinalDateFormat(){
    var suffix = "th";
    var digit = day % 10;
    if ((digit > 0 && digit < 4) && (day < 11 || day > 13)) {
      suffix = ["st", "nd", "rd"][digit - 1];
    }
    return suffix;
  }              
} 