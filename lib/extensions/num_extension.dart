import 'package:intl/intl.dart';

extension NumExtension on num {
  num toNegative() => -this;

  String toMoney([String symbol = 'HK\$', int decimalDigits = 1]) =>
      NumberFormat.currency(symbol: symbol, decimalDigits: decimalDigits)
          .format(this);

  String toDollar([String symbol = '\$', int decimalDigits = 1]) =>
      NumberFormat.currency(symbol: symbol, decimalDigits: decimalDigits)
          .format(this);

  // String toKg() {
  //   final format = NumberFormat('#,###.###kg');
  //   return format.format(this);
  // }

  // String toG() {
  //   final format = NumberFormat('#,###g');
  //   return format.format((this * 1000).toInt());
  // }

  String toPercentage() => NumberFormat.percentPattern().format(this);
}
