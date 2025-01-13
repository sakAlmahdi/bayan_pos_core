import 'package:bayan_pos_core/data/model/new/promotion/order_product_promotion_applies_dto.dart';

class OrderProductPromotionInfoDto {
  double notAppliesQuantity;
  double appliesAsPurchaseQuantity;
  double appliesAsDiscountQuantity;
  double promotionDiscountAmount;
  double promotionDiscountPercentage;
  List<OrderProductPromotionAppliesDto> promotions;

  OrderProductPromotionInfoDto({
    required this.notAppliesQuantity,
    required this.appliesAsPurchaseQuantity,
    required this.appliesAsDiscountQuantity,
    required this.promotionDiscountAmount,
    required this.promotionDiscountPercentage,
    required this.promotions,
  });

  // fromJson
  factory OrderProductPromotionInfoDto.fromJson(Map<String, dynamic> json) {
    return OrderProductPromotionInfoDto(
      notAppliesQuantity: (json['notAppliesQuantity'] as num).toDouble(),
      appliesAsPurchaseQuantity:
          (json['appliesAsPurchaseQuantity'] as num).toDouble(),
      appliesAsDiscountQuantity:
          (json['appliesAsDiscountQuantity'] as num).toDouble(),
      promotionDiscountAmount:
          (json['promotionDiscountAmount'] as num).toDouble(),
      promotionDiscountPercentage:
          (json['promotionDiscountPercentage'] as num).toDouble(),
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => OrderProductPromotionAppliesDto.fromJson(e))
          .toList(),
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'notAppliesQuantity': notAppliesQuantity,
      'appliesAsPurchaseQuantity': appliesAsPurchaseQuantity,
      'appliesAsDiscountQuantity': appliesAsDiscountQuantity,
      'promotionDiscountAmount': promotionDiscountAmount,
      'promotionDiscountPercentage': promotionDiscountPercentage,
      'promotions': promotions.map((e) => e.toJson()).toList(),
    };
  }

  // copyWith
  OrderProductPromotionInfoDto copyWith({
    double? notAppliesQuantity,
    double? appliesAsPurchaseQuantity,
    double? appliesAsDiscountQuantity,
    double? promotionDiscountAmount,
    double? promotionDiscountPercentage,
    List<OrderProductPromotionAppliesDto>? promotions,
  }) {
    return OrderProductPromotionInfoDto(
      notAppliesQuantity: notAppliesQuantity ?? this.notAppliesQuantity,
      appliesAsPurchaseQuantity:
          appliesAsPurchaseQuantity ?? this.appliesAsPurchaseQuantity,
      appliesAsDiscountQuantity:
          appliesAsDiscountQuantity ?? this.appliesAsDiscountQuantity,
      promotionDiscountAmount:
          promotionDiscountAmount ?? this.promotionDiscountAmount,
      promotionDiscountPercentage:
          promotionDiscountPercentage ?? this.promotionDiscountPercentage,
      promotions: promotions ?? this.promotions,
    );
  }
}

// Placeholder for OrderProductPromotionAppliesDto
