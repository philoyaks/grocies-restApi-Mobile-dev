import 'package:intl/intl.dart';
import 'dart:io';

String numberToMoneyString(int price, {String unit = 'N'}) {
  // var format =
  //     NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
  // unit = format.currencySymbol;
  // print(unit);
  return NumberFormat("#,###", "vi_VN").format(price) + unit;
}

String getCurrency() {
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
  return format.currencySymbol;
}
