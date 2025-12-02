import 'package:bayan_pos_core/core/extensions/base_num_extension.dart';
import 'package:bayan_pos_core/data/enum/discount_type.dart';
import 'package:bayan_pos_core/data/model/discount/discount.dart';
import 'package:flutter/material.dart';

extension DiscountExtension on Discount {
  String tralingInfoDiscount() {
    switch (getDiscountType) {
      case DiscountType.percentage:
        return "${getValue?.removeTrailingZeros} %";
      case DiscountType.price:
        return "${getValue.removeTrailingZeros} ";
      case DiscountType.payFixedPrice:
        return "${getValue.removeTrailingZeros} ";
    }
  }

  Color colorByType() {
    switch (getDiscountType) {
      case DiscountType.percentage:
        return Colors.red;
      case DiscountType.price:
        return Colors.red;
      case DiscountType.payFixedPrice:
        return Colors.red;
    }
  }
}
