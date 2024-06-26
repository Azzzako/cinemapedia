



import 'package:intl/intl.dart';

class HumanFormat {
  static String number(double number, [int digits = 0]) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: digits,
      symbol: '',
      locale: 'en',
    ).format(number);

    return formattedNumber;
  }
}