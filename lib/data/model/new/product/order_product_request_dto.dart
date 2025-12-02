import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_info_dto.dart';
import 'package:bayan_pos_core/data/model/order/unit.dart';
import 'package:flutter_guid/flutter_guid.dart';

class OrderProductRequestDto {
  String prodRef;
  int tableRowIndex;
  Guid productId;
  Guid unitId;
  double quantity;
  double? freeQuantity;
  double unitPrice;
  double totalPrice;
  double discountAmount;
  double discountPercentage;
  Guid? discountId;
  Guid? taxGroupId;
  List<OrderProductAppliedModifierDto>? appliedModifiers;
  bool? isCancel;
  Unit unit;
  ExtractProduct productModel;

  OrderProductRequestDto({
    required this.prodRef,
    required this.tableRowIndex,
    required this.productId,
    required this.unitId,
    required this.quantity,
    required this.unit,
    required this.productModel,
    this.freeQuantity,
    required this.unitPrice,
    required this.totalPrice,
    required this.discountAmount,
    required this.discountPercentage,
    this.discountId,
    this.taxGroupId,
    this.appliedModifiers,
    this.isCancel,
  });

  /// Factory constructor to create an instance from JSON
  factory OrderProductRequestDto.fromJson(Map<String, dynamic> json) {
    return OrderProductRequestDto(
      productModel:
          ExtractProduct.fromJson(json['productModel'] as Map<String, dynamic>),
      unit: Unit.fromJson(json['unit'] as Map<String, dynamic>),
      prodRef: json['prodRef'] as String,
      tableRowIndex: json['tableRowIndex'] as int,
      productId: Guid(json['productId'] as String),
      unitId: Guid(json['unitId'] as String),
      quantity: (json['quantity'] as num).toDouble(),
      freeQuantity: json['freeQuantity'] != null
          ? (json['freeQuantity'] as num).toDouble()
          : null,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      discountAmount: (json['discountAmount'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      discountId: json['discountId'] != null
          ? Guid(json['discountId'] as String)
          : null,
      taxGroupId: json['taxGroupId'] != null
          ? Guid(json['taxGroupId'] as String)
          : null,
      appliedModifiers: json['appliedModifiers'] != null
          ? (json['appliedModifiers'] as List<dynamic>)
              .map((e) => OrderProductAppliedModifierDto.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          : null,
      isCancel: json['isCancel'],
    );
  }

  /// Convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'prodRef': prodRef,
      'productModel': productModel.toJson(),
      'tableRowIndex': tableRowIndex,
      'unit': unit.toJson(),
      'productId': productId.toString(),
      'unitId': unitId.toString(),
      'quantity': quantity,
      'freeQuantity': freeQuantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'discountId': discountId?.toString(),
      'taxGroupId': taxGroupId?.toString(),
      'appliedModifiers': appliedModifiers?.map((e) => e.toJson()).toList(),
      'isCancel': isCancel,
    };
  }

  /// Create a copy of the instance with updated fields
  OrderProductRequestDto copyWith({
    Unit? unit,
    ExtractProduct? productModel,
    int? tableRowIndex,
    Guid? productId,
    Guid? unitId,
    double? quantity,
    double? freeQuantity,
    double? unitPrice,
    double? totalPrice,
    double? discountAmount,
    double? discountPercentage,
    Guid? discountId,
    Guid? taxGroupId,
    String? prodRef,
    List<OrderProductAppliedModifierDto>? appliedModifiers,
    bool? isCancel,
  }) {
    return OrderProductRequestDto(
      productModel: productModel ?? this.productModel,
      unit: unit ?? this.unit,
      prodRef: prodRef ?? this.prodRef,
      tableRowIndex: tableRowIndex ?? this.tableRowIndex,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountId: discountId ?? this.discountId,
      taxGroupId: taxGroupId ?? this.taxGroupId,
      appliedModifiers: appliedModifiers ?? this.appliedModifiers,
      isCancel: isCancel,
    );
  }
}

// كلاس يمثل خيار الإضافة (option) مع الحقول المالية
class OrderProductAppliedOptionDto {
  double quantity;
  double? freeQuantity;
  double unitPrice;
  double totalPrice;
  double? discountAmount;
  double? discountPercentage;
  double netUnitPrice;
  double netTotalPrice;
  double? taxableAmount;
  double? taxAmount;
  double? netUnitPriceExcludeTax;
  double? netTotalPriceExcludeTax;
  double? orderDiscountAmount;
  double? orderDiscountPercentage;
  double finalAmount;
  String? optionId;
  String? notes;
  String? name;
  String? fName;
  OrderProductTaxInfoDto? taxInfo;
  String? taxGroupId;

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  OrderProductAppliedOptionDto({
    required this.quantity,
    this.freeQuantity,
    required this.unitPrice,
    required this.totalPrice,
    this.discountAmount,
    this.discountPercentage,
    required this.netUnitPrice,
    required this.netTotalPrice,
    this.taxableAmount,
    this.taxAmount,
    required this.finalAmount,
    this.optionId,
    this.notes,
    this.name,
    this.fName,
    this.taxInfo,
    this.taxGroupId,
    this.netUnitPriceExcludeTax,
    this.netTotalPriceExcludeTax,
    this.orderDiscountAmount,
    this.orderDiscountPercentage,
  });

  factory OrderProductAppliedOptionDto.fromJson(Map<String, dynamic> json) {
    return OrderProductAppliedOptionDto(
      quantity: (json['quantity'] as num).toDouble(),
      freeQuantity: json['freeQuantity'] != null
          ? (json['freeQuantity'] as num).toDouble()
          : null,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      discountAmount: json['discountAmount'] != null
          ? (json['discountAmount'] as num).toDouble()
          : null,
      discountPercentage: json['discountPercentage'] != null
          ? (json['discountPercentage'] as num).toDouble()
          : null,
      netUnitPrice: (json['netUnitPrice'] as num).toDouble(),
      netTotalPrice: (json['netTotalPrice'] as num).toDouble(),
      taxableAmount: json['taxableAmount'] != null
          ? (json['taxableAmount'] as num).toDouble()
          : null,
      taxAmount: json['taxAmount'] != null
          ? (json['taxAmount'] as num).toDouble()
          : null,
      finalAmount: (json['finalAmount'] as num).toDouble(),
      optionId: json['optionId'] as String?,
      notes: json['notes'] as String?,
      name: json['name'] as String?,
      fName: json['fName'] as String?,
      taxInfo: json['taxInfo'] != null
          ? OrderProductTaxInfoDto.fromJson(
              json['taxInfo'] as Map<String, dynamic>)
          : null,
      taxGroupId: json['taxGroupId'] as String?,
      netUnitPriceExcludeTax: json['netUnitPriceExcludeTax'] != null
          ? (json['netUnitPriceExcludeTax'] as num).toDouble()
          : null,
      netTotalPriceExcludeTax: json['netTotalPriceExcludeTax'] != null
          ? (json['netTotalPriceExcludeTax'] as num).toDouble()
          : null,
      orderDiscountAmount: json['orderDiscountAmount'] != null
          ? (json['orderDiscountAmount'] as num).toDouble()
          : null,
      orderDiscountPercentage: json['orderDiscountPercentage'] != null
          ? (json['orderDiscountPercentage'] as num).toDouble()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quantity': quantity,
      'freeQuantity': freeQuantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'netUnitPrice': netUnitPrice,
      'netTotalPrice': netTotalPrice,
      'taxableAmount': taxableAmount,
      'taxAmount': taxAmount,
      'finalAmount': finalAmount,
      'optionId': optionId,
      'notes': notes,
      'name': name,
      'fName': fName,
      'taxInfo': taxInfo?.toJson(),
      'taxGroupId': taxGroupId,
      'netUnitPriceExcludeTax': netUnitPriceExcludeTax,
      'netTotalPriceExcludeTax': netTotalPriceExcludeTax,
      'orderDiscountAmount': orderDiscountAmount,
      'orderDiscountPercentage': orderDiscountPercentage,
    };
  }

  OrderProductAppliedOptionDto copyWith({
    double? quantity,
    double? freeQuantity,
    double? unitPrice,
    double? totalPrice,
    double? discountAmount,
    double? discountPercentage,
    double? netUnitPrice,
    double? netTotalPrice,
    double? taxableAmount,
    double? taxAmount,
    double? finalAmount,
    String? optionId,
    String? notes,
    String? name,
    String? fName,
    double? netUnitPriceExcludeTax,
    double? netTotalPriceExcludeTax,
    double? orderDiscountAmount,
    double? orderDiscountPercentage,
  }) {
    return OrderProductAppliedOptionDto(
      quantity: quantity ?? this.quantity,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      optionId: optionId ?? this.optionId,
      notes: notes ?? this.notes,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      netUnitPriceExcludeTax:
          netUnitPriceExcludeTax ?? this.netUnitPriceExcludeTax,
      netTotalPriceExcludeTax:
          netTotalPriceExcludeTax ?? this.netTotalPriceExcludeTax,
      orderDiscountAmount: orderDiscountAmount ?? this.orderDiscountAmount,
      orderDiscountPercentage:
          orderDiscountPercentage ?? this.orderDiscountPercentage,
    );
  }
}

// كلاس يمثل الإضافة (modifier) مع قائمة الخيارات
class OrderProductAppliedModifierDto {
  String? modifierId;
  String? notes;
  String? name;
  String? fName;
  List<OrderProductAppliedOptionDto> options;
  double? discountAmount;
  double? discountPercentage;
  double? netUnitPrice;
  double? netTotalPrice;
  double? netUnitPriceExcludeTax;
  double? netTotalPriceExcludeTax;
  double? orderDiscountAmount;
  double? taxableAmount;
  double? taxAmount;
  double? finalAmount;

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  OrderProductAppliedModifierDto({
    this.modifierId,
    this.notes,
    this.name,
    this.fName,
    required this.options,
    this.discountAmount,
    this.discountPercentage,
    this.netUnitPrice,
    this.netTotalPrice,
    this.netUnitPriceExcludeTax,
    this.netTotalPriceExcludeTax,
    this.orderDiscountAmount,
    this.taxableAmount,
    this.taxAmount,
    this.finalAmount,
  });

  factory OrderProductAppliedModifierDto.fromJson(Map<String, dynamic> json) {
    return OrderProductAppliedModifierDto(
      modifierId: json['modifierId'] as String?,
      notes: json['notes'] as String?,
      name: json['name'] as String?,
      fName: json['fName'] as String?,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => OrderProductAppliedOptionDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      discountAmount: json['discountAmount'] != null
          ? (json['discountAmount'] as num).toDouble()
          : null,
      discountPercentage: json['discountPercentage'] != null
          ? (json['discountPercentage'] as num).toDouble()
          : null,
      netUnitPrice: json['netUnitPrice'] != null
          ? (json['netUnitPrice'] as num).toDouble()
          : null,
      netTotalPrice: json['netTotalPrice'] != null
          ? (json['netTotalPrice'] as num).toDouble()
          : null,
      netUnitPriceExcludeTax: json['netUnitPriceExcludeTax'] != null
          ? (json['netUnitPriceExcludeTax'] as num).toDouble()
          : null,
      netTotalPriceExcludeTax: json['netTotalPriceExcludeTax'] != null
          ? (json['netTotalPriceExcludeTax'] as num).toDouble()
          : null,
      orderDiscountAmount: json['orderDiscountAmount'] != null
          ? (json['orderDiscountAmount'] as num).toDouble()
          : null,
      taxableAmount: json['taxableAmount'] != null
          ? (json['taxableAmount'] as num).toDouble()
          : null,
      taxAmount: json['taxAmount'] != null
          ? (json['taxAmount'] as num).toDouble()
          : null,
      finalAmount: json['finalAmount'] != null
          ? (json['finalAmount'] as num).toDouble()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'modifierId': modifierId,
      'notes': notes,
      'name': name,
      'fName': fName,
      'options': options.map((e) => e.toJson()).toList(),
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'netUnitPrice': netUnitPrice,
      'netTotalPrice': netTotalPrice,
      'netUnitPriceExcludeTax': netUnitPriceExcludeTax,
      'netTotalPriceExcludeTax': netTotalPriceExcludeTax,
      'orderDiscountAmount': orderDiscountAmount,
      'taxableAmount': taxableAmount,
      'taxAmount': taxAmount,
      'finalAmount': finalAmount,
    };
  }

  OrderProductAppliedModifierDto copyWith({
    String? modifierId,
    String? notes,
    String? name,
    String? fName,
    List<OrderProductAppliedOptionDto>? options,
    double? discountAmount,
    double? discountPercentage,
    double? netUnitPrice,
    double? netTotalPrice,
    double? netUnitPriceExcludeTax,
    double? netTotalPriceExcludeTax,
    double? orderDiscountAmount,
    double? taxableAmount,
    double? taxAmount,
    double? finalAmount,
  }) {
    return OrderProductAppliedModifierDto(
      modifierId: modifierId ?? this.modifierId,
      notes: notes ?? this.notes,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      options: options ?? this.options,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      netUnitPriceExcludeTax:
          netUnitPriceExcludeTax ?? this.netUnitPriceExcludeTax,
      netTotalPriceExcludeTax:
          netTotalPriceExcludeTax ?? this.netTotalPriceExcludeTax,
      orderDiscountAmount: orderDiscountAmount ?? this.orderDiscountAmount,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
    );
  }
}
