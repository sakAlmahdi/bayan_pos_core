import 'package:objectbox/objectbox.dart';

@Entity()
class TaxSetting {
  @Id()
  int? idSeq;
  bool? enableSalesTax;
  bool? salesPriceIncludeTax;
  bool? enableCustomerSupplierTax;
  double? taxRoundFactor;

  TaxSetting({
    this.enableSalesTax,
    this.salesPriceIncludeTax,
    this.enableCustomerSupplierTax,
    this.taxRoundFactor,
  });

  TaxSetting.fromJson(Map<String, dynamic> json) {
    enableSalesTax = json['enable_Sales_Tax'];
    salesPriceIncludeTax = json['sales_Price_Include_Tax'];
    enableCustomerSupplierTax = json['enable_Customer_Supplier_Tax'];
    taxRoundFactor =
        double.tryParse(json['tax_Round_Factor'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['enable_Sales_Tax'] = enableSalesTax;
    data['sales_Price_Include_Tax'] = salesPriceIncludeTax;
    data['enable_Customer_Supplier_Tax'] = enableCustomerSupplierTax;
    data['tax_Round_Factor'] = taxRoundFactor;
    return data;
  }
}
