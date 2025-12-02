import 'package:bayan_pos_core/data/model/new/tax/sales_tax_type_edit_dto.dart';

class ProductTaxInfoDto {
  double netTotalPrice;
  double discountAmount;
  double taxAmount;
  double taxPercentage;
  List<SalesTaxTypeEditDto> taxTypes;
  double? unitPrice;
  double? totalPrice;
  double? quantityTaxAmount;
  double? freeQuantityTaxAmount;
  double? finalAmount;
  double? netAmountRoundingDecimal;

  ProductTaxInfoDto({
    this.netTotalPrice = 0.0,
    this.discountAmount = 0.0,
    this.taxAmount = 0.0,
    this.taxPercentage = 0.0,
    List<SalesTaxTypeEditDto>? taxTypes,
    this.finalAmount,
    this.freeQuantityTaxAmount,
    this.netAmountRoundingDecimal,
    this.quantityTaxAmount,
    this.totalPrice,
    this.unitPrice,
  }) : taxTypes = taxTypes ?? [];
}
