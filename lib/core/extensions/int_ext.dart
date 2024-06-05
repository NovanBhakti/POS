import 'package:intl/intl.dart';

extension IntegerExt on int {
  String get currencyFormatRp => NumberFormat.currency(
        symbol: 'Rp. ',
        decimalDigits: 2,
      ).format(this);
}
