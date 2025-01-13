import 'package:get/get.dart';

enum PromotionRewardType {
  discountOnOrder(1, 'Discount On Order'),
  discountOnProduct(2, 'Discount On Product'),
  fixedPrice(3, 'Fixed Price'),
  discountOnShipping(4, 'Discount On Shipping'),
  giftCard(5, 'Gift Card');

  final int key;
  final String name;

  const PromotionRewardType(this.key, this.name);

  int toKey() => key;
  String toName() => name;

  static PromotionRewardType fromKey(int? key) {
    return PromotionRewardType.values.firstWhereOrNull(
          (type) => type.key == key,
        ) ??
        PromotionRewardType.discountOnProduct;
  }
}
