import 'package:objectbox/objectbox.dart';

@Entity()
class BillSetting {
  int? id;
  String? logoUrl;
  String? companyName;
  String? fCompanyName;
  String? taxNo;
  String? phoneNumber;
  String? address;
  String? fAddress;
  String? headerInvoiceMessage;
  String? fHeaderInvoiceMessage;
  String? footerInvoiceMessage;
  String? fFooterInvoiceMessage;
  int? invoiceRoundFactor;
  bool? enablePrintBundleProductChildren;
  bool? printOrderNumber;
  bool? printCalories;
  bool? printSubTotal;
  bool? printRoundDigit;
  bool? printProductUnit;
  bool? printProductUnitPrice;
  bool? printProductTotalPrice;
  bool? printProductDiscountPrice;
  bool? printProductFreeQuantity;
  bool? printProductTotalPriceBeforeTax;
  bool? printProductTaxAmount;
  bool? printProductTaxPercentage;
  bool? printProductTotalPriceAfterDiscount;
  bool? printProductTotalPriceIncludeTax;
  bool? printOrderClosedUser;
  bool? printOrderCreatedUser;
  bool? printCheckNumber;
  bool? hideFreeModifierOptions;
  String? invoiceTemplate;
  String? refundTemplate;
  bool? autoPrintOnSave;
  String? printlanguage;
  String? defaultLanguage;
  String? secondLanguage;
  String? invoiceTitle;
  String? fInvoiceTitle;

  final logoData = ToOne<LogoData>();

  BillSetting(
      {this.id,
      this.logoUrl,
      this.companyName,
      this.fCompanyName,
      this.taxNo,
      this.phoneNumber,
      this.address,
      this.fAddress,
      this.headerInvoiceMessage,
      this.fHeaderInvoiceMessage,
      this.footerInvoiceMessage,
      this.fFooterInvoiceMessage,
      this.invoiceRoundFactor,
      this.enablePrintBundleProductChildren,
      this.printOrderNumber,
      this.printCalories,
      this.printSubTotal,
      this.printRoundDigit,
      this.printProductUnit,
      this.printProductUnitPrice,
      this.printProductTotalPrice,
      this.printProductDiscountPrice,
      this.printProductFreeQuantity,
      this.printProductTotalPriceBeforeTax,
      this.printProductTaxAmount,
      this.printProductTaxPercentage,
      this.printProductTotalPriceAfterDiscount,
      this.printProductTotalPriceIncludeTax,
      this.printOrderClosedUser,
      this.printOrderCreatedUser,
      this.printCheckNumber,
      this.hideFreeModifierOptions,
      this.invoiceTemplate,
      this.refundTemplate,
      this.autoPrintOnSave,
      this.printlanguage,
      this.defaultLanguage,
      this.secondLanguage,
      this.invoiceTitle,
      this.fInvoiceTitle});

  BillSetting.fromJson(Map<String, dynamic> json) {
    logoUrl = json['logoUrl'];
    companyName = json['companyName '];
    fCompanyName = json['fCompanyName'];
    taxNo = json['taxNo'];
    phoneNumber = json['phoneNumber'];
    address = json['address'];
    fAddress = json['fAddress'];
    headerInvoiceMessage = json['headerInvoiceMessage '];
    fHeaderInvoiceMessage = json['fHeaderInvoiceMessage'];
    footerInvoiceMessage = json['FooterInvoiceMessage'];
    fFooterInvoiceMessage = json['FFooterInvoiceMessage '];
    invoiceRoundFactor = json['Invoice_RoundFactor '];
    enablePrintBundleProductChildren =
        json['enablePrintBundleProductChildren '];
    printOrderNumber = json['printOrderNumber'];
    printCalories = json['printCalories'];
    printSubTotal = json['printSubTotal'];
    printRoundDigit = json['printRoundDigit'];
    printProductUnit = json['printProductUnit'];
    printProductUnitPrice = json['printProductUnitPrice'];
    printProductTotalPrice = json['printProductTotalPrice'];
    printProductDiscountPrice = json['printProductDiscountPrice'];
    printProductFreeQuantity = json['printProductFreeQuantity'];
    printProductTotalPriceBeforeTax = json['printProductTotalPriceBeforeTax'];
    printProductTaxAmount = json['printProductTaxAmount'];
    printProductTaxPercentage = json['printProductTaxPercentage'];
    printProductTotalPriceAfterDiscount =
        json['printProductTotalPriceAfterDiscount'];
    printProductTotalPriceIncludeTax = json['printProductTotalPriceIncludeTax'];
    printOrderClosedUser = json['printOrderClosedUser'];
    printOrderCreatedUser = json['printOrderCreatedUser'];
    printCheckNumber = json['printCheckNumber'];
    hideFreeModifierOptions = json['hideFreeModifierOptions'];
    invoiceTemplate = json['invoiceTemplate'];
    refundTemplate = json['refundTemplate'];
    autoPrintOnSave = json['autoPrintOnSave'];
    printlanguage = json['printlanguage'];
    defaultLanguage = json['defaultLanguage'];
    secondLanguage = json['secondLanguage'];
    invoiceTitle = json['invoiceTitle'];
    fInvoiceTitle = json['fInvoiceTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['logoUrl'] = logoUrl;
    data['companyName '] = companyName;
    data['fCompanyName'] = fCompanyName;
    data['taxNo'] = taxNo;
    data['phoneNumber'] = phoneNumber;
    data['address'] = address;
    data['fAddress'] = fAddress;
    data['headerInvoiceMessage '] = headerInvoiceMessage;
    data['fHeaderInvoiceMessage'] = fHeaderInvoiceMessage;
    data['FooterInvoiceMessage'] = footerInvoiceMessage;
    data['FFooterInvoiceMessage '] = fFooterInvoiceMessage;
    data['Invoice_RoundFactor '] = invoiceRoundFactor;
    data['enablePrintBundleProductChildren '] =
        enablePrintBundleProductChildren;
    data['printOrderNumber'] = printOrderNumber;
    data['printCalories'] = printCalories;
    data['printSubTotal'] = printSubTotal;
    data['printRoundDigit'] = printRoundDigit;
    data['printProductUnit'] = printProductUnit;
    data['printProductUnitPrice'] = printProductUnitPrice;
    data['printProductTotalPrice'] = printProductTotalPrice;
    data['printProductDiscountPrice'] = printProductDiscountPrice;
    data['printProductFreeQuantity'] = printProductFreeQuantity;
    data['printProductTotalPriceBeforeTax'] = printProductTotalPriceBeforeTax;
    data['printProductTaxAmount'] = printProductTaxAmount;
    data['printProductTaxPercentage'] = printProductTaxPercentage;
    data['printProductTotalPriceAfterDiscount'] =
        printProductTotalPriceAfterDiscount;
    data['printProductTotalPriceIncludeTax'] = printProductTotalPriceIncludeTax;
    data['printOrderClosedUser'] = printOrderClosedUser;
    data['printOrderCreatedUser'] = printOrderCreatedUser;
    data['printCheckNumber'] = printCheckNumber;
    data['hideFreeModifierOptions'] = hideFreeModifierOptions;
    data['invoiceTemplate'] = invoiceTemplate;
    data['refundTemplate'] = refundTemplate;
    data['autoPrintOnSave'] = autoPrintOnSave;
    data['printlanguage'] = printlanguage;
    data['defaultLanguage'] = defaultLanguage;
    data['secondLanguage'] = secondLanguage;
    data['invoiceTitle'] = invoiceTitle;
    data['fInvoiceTitle'] = fInvoiceTitle;
    return data;
  }

  BillSetting copyWith({
    int? id,
    String? logoUrl,
    String? companyName,
    String? fCompanyName,
    String? taxNo,
    String? phoneNumber,
    String? address,
    String? fAddress,
    String? headerInvoiceMessage,
    String? fHeaderInvoiceMessage,
    String? footerInvoiceMessage,
    String? fFooterInvoiceMessage,
    int? invoiceRoundFactor,
    bool? enablePrintBundleProductChildren,
    bool? printOrderNumber,
    bool? printCalories,
    bool? printSubTotal,
    bool? printRoundDigit,
    bool? printProductUnit,
    bool? printProductUnitPrice,
    bool? printProductTotalPrice,
    bool? printProductDiscountPrice,
    bool? printProductFreeQuantity,
    bool? printProductTotalPriceBeforeTax,
    bool? printProductTaxAmount,
    bool? printProductTaxPercentage,
    bool? printProductTotalPriceAfterDiscount,
    bool? printProductTotalPriceIncludeTax,
    bool? printOrderClosedUser,
    bool? printOrderCreatedUser,
    bool? printCheckNumber,
    bool? hideFreeModifierOptions,
    String? invoiceTemplate,
    String? refundTemplate,
    bool? autoPrintOnSave,
    String? printlanguage,
    String? defaultLanguage,
    String? secondLanguage,
    String? invoiceTitle,
    String? fInvoiceTitle,
  }) {
    return BillSetting(
      id: id ?? this.id,
      logoUrl: logoUrl ?? this.logoUrl,
      companyName: companyName ?? this.companyName,
      fCompanyName: fCompanyName ?? this.fCompanyName,
      taxNo: taxNo ?? this.taxNo,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      fAddress: fAddress ?? this.fAddress,
      headerInvoiceMessage: headerInvoiceMessage ?? this.headerInvoiceMessage,
      fHeaderInvoiceMessage:
          fHeaderInvoiceMessage ?? this.fHeaderInvoiceMessage,
      footerInvoiceMessage: footerInvoiceMessage ?? this.footerInvoiceMessage,
      fFooterInvoiceMessage:
          fFooterInvoiceMessage ?? this.fFooterInvoiceMessage,
      invoiceRoundFactor: invoiceRoundFactor ?? this.invoiceRoundFactor,
      enablePrintBundleProductChildren: enablePrintBundleProductChildren ??
          this.enablePrintBundleProductChildren,
      printOrderNumber: printOrderNumber ?? this.printOrderNumber,
      printCalories: printCalories ?? this.printCalories,
      printSubTotal: printSubTotal ?? this.printSubTotal,
      printRoundDigit: printRoundDigit ?? this.printRoundDigit,
      printProductUnit: printProductUnit ?? this.printProductUnit,
      printProductUnitPrice:
          printProductUnitPrice ?? this.printProductUnitPrice,
      printProductTotalPrice:
          printProductTotalPrice ?? this.printProductTotalPrice,
      printProductDiscountPrice:
          printProductDiscountPrice ?? this.printProductDiscountPrice,
      printProductFreeQuantity:
          printProductFreeQuantity ?? this.printProductFreeQuantity,
      printProductTotalPriceBeforeTax: printProductTotalPriceBeforeTax ??
          this.printProductTotalPriceBeforeTax,
      printProductTaxAmount:
          printProductTaxAmount ?? this.printProductTaxAmount,
      printProductTaxPercentage:
          printProductTaxPercentage ?? this.printProductTaxPercentage,
      printProductTotalPriceAfterDiscount:
          printProductTotalPriceAfterDiscount ??
              this.printProductTotalPriceAfterDiscount,
      printProductTotalPriceIncludeTax: printProductTotalPriceIncludeTax ??
          this.printProductTotalPriceIncludeTax,
      printOrderClosedUser: printOrderClosedUser ?? this.printOrderClosedUser,
      printOrderCreatedUser:
          printOrderCreatedUser ?? this.printOrderCreatedUser,
      printCheckNumber: printCheckNumber ?? this.printCheckNumber,
      hideFreeModifierOptions:
          hideFreeModifierOptions ?? this.hideFreeModifierOptions,
      invoiceTemplate: invoiceTemplate ?? this.invoiceTemplate,
      refundTemplate: refundTemplate ?? this.refundTemplate,
      autoPrintOnSave: autoPrintOnSave ?? this.autoPrintOnSave,
      printlanguage: printlanguage ?? this.printlanguage,
      defaultLanguage: defaultLanguage ?? this.defaultLanguage,
      secondLanguage: secondLanguage ?? this.secondLanguage,
      invoiceTitle: invoiceTitle ?? this.invoiceTitle,
      fInvoiceTitle: fInvoiceTitle ?? this.fInvoiceTitle,
    );
  }
}

@Entity()
class LogoData {
  int? id;
  String? logoUrl;
  @Property(type: PropertyType.byteVector)
  List<int>? logoData;

  LogoData({this.id, this.logoUrl, this.logoData});
}
