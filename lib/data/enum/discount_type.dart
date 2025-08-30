///  Percentage = 1,
/// Amount = 2,

enum DiscountType {
  percentage,
  price,
  payFixedPrice,
}

// extension DiscountTypeExtension on DiscountType {
//   int get toKey {
//     switch (this) {
//       case DiscountType.percentage:
//         return 1;
//       case DiscountType.price:
//         return 2;
//       case DiscountType.payFixedPrice:
//         return 3;
//       default:
//         return 2;
//     }
//   }
// }

DiscountType convertToDiscontType(int? key) {
  switch (key) {
    case 1:
      return DiscountType.percentage;
    case 2:
      return DiscountType.price;
    case 3:
      return DiscountType.payFixedPrice;
    default:
      return DiscountType.price;
  }
}

DiscountType convertToDiscountTypeByName(String? key) {
  switch (key) {
    case 'percentage':
      return DiscountType.percentage;
    case 'price':
      return DiscountType.price;
    case 'payFixedPrice':
      return DiscountType.payFixedPrice;
    default:
      return DiscountType.price;
  }
}

extension DiscountTypeEx on DiscountType {
  int get toKey {
    switch (this) {
      case DiscountType.percentage:
        return 1;
      case DiscountType.price:
        return 2;
      case DiscountType.payFixedPrice:
        return 3;
      default:
        return 2;
    }
  }

  String get name {
    switch (this) {
      case DiscountType.percentage:
        return 'نسبة';
      case DiscountType.price:
        return 'مبلغ';
      case DiscountType.payFixedPrice:
        return 'يدفع مبلغ ثابت';
      default:
        return 'مبلغ';
    }
  }
}
