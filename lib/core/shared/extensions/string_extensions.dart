import 'package:intl/intl.dart';

extension StringExtension on String {
  String formatNumber() {
    NumberFormat numberFormat = NumberFormat('#,##0', 'en_US');
    return numberFormat.format(this);
  }


}
