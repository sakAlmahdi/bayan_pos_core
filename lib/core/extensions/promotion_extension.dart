import 'package:bayan_pos_core/core/extensions/base_num_extension.dart';
import 'package:bayan_pos_core/data/enum/discount_type.dart';
import 'package:bayan_pos_core/data/model/discount/promotion.dart';
import 'package:flutter/material.dart';

extension PromotionExtension on Promotion {
  String tralingInfoPromotion() {
    switch (getDiscountType) {
      case DiscountType.percentage:
        return "- ${discountPercentage?.removeTrailingZeros} %";
      case DiscountType.price:
        return "- ${discountPercentage.removeTrailingZeros} ";
      case DiscountType.payFixedPrice:
        return "- ${discountPercentage.removeTrailingZeros} ";
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
