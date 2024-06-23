import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class SalesInvoiceTemplates {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? printedTitle;
  String? fPrintedTitle;
  String? headerInvoiceMessage;
  String? fHeaderInvoiceMessage;
  String? footerInvoiceMessage;
  String? fFooterInvoiceMessage;
  bool? printCompanyName;
  bool? printBranchName;
  bool? printCRNo;
  bool? printBankAccount;
  bool? printTaxNumber;
  bool? printPaymentType;
  bool? printOrderType;
  bool? printOrderNumber;
  bool? printUnitSize;
  bool? printProductSecondaryName;
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
  bool? autoPrintOnSave;
  String? printLanguage;
  String? printerPaperSize;
  String? printerPaperDirection;
  String? invoiceCategory;
  String? defaultLanguage;
  String? secondLanguage;
  List<int>? orderTypes;
  List<String>? users;
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
  String? defaultCode;
  String? secondCode;
  String? pointsMessage;
  String? fPointsMessage;
  bool? printCustomerPoints;

  SalesInvoiceTemplates({
    this.id,
    this.name,
    this.fName,
    this.headerInvoiceMessage,
    this.fHeaderInvoiceMessage,
    this.footerInvoiceMessage,
    this.fFooterInvoiceMessage,
    this.printCompanyName,
    this.printBranchName,
    this.printCRNo,
    this.printBankAccount,
    this.printTaxNumber,
    this.printPaymentType,
    this.printOrderType,
    this.printOrderNumber,
    this.printUnitSize,
    this.printProductSecondaryName,
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
    this.autoPrintOnSave,
    this.printLanguage,
    this.printerPaperSize,
    this.printerPaperDirection,
    this.invoiceCategory,
    this.defaultLanguage,
    this.secondLanguage,
    this.orderTypes,
    this.users,
    this.printedTitle,
    this.fPrintedTitle,
    this.defaultCode,
    this.secondCode,
    this.pointsMessage,
    this.fPointsMessage,
    this.printCustomerPoints,
  });

  SalesInvoiceTemplates.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    headerInvoiceMessage = json['header_Invoice_Message'];
    fHeaderInvoiceMessage = json['f_Header_Invoice_Message'];
    footerInvoiceMessage = json['footer_Invoice_Message'];
    fFooterInvoiceMessage = json['f_Footer_Invoice_Message'];
    printCompanyName = json['print_Company_Name'];
    printBranchName = json['print_Branch_Name'];
    printCRNo = json['print_CR_No'];
    printBankAccount = json['print_Bank_Account'];
    printTaxNumber = json['print_Tax_Number'];
    printPaymentType = json['print_Payment_Type'];
    printOrderType = json['print_Order_Type'];
    printOrderNumber = json['print_Order_Number'];
    printUnitSize = json['print_Unit_Size'];
    printProductSecondaryName = json['print_Product_SecondaryName'];
    printCalories = json['print_Calories'];
    printSubTotal = json['print_SubTotal'];
    printRoundDigit = json['print_Round_Digit'];
    printProductUnit = json['print_Product_Unit'];
    printProductUnitPrice = json['print_Product_Unit_Price'];
    printProductTotalPrice = json['print_Product_Total_Price'];
    printProductDiscountPrice = json['print_Product_Discount_Price'];
    printProductFreeQuantity = json['print_Product_Free_Quantity'];
    printProductTotalPriceBeforeTax =
        json['print_Product_Total_Price_Before_Tax'];
    printProductTaxAmount = json['print_Product_Tax_Amount'];
    printProductTaxPercentage = json['print_Product_Tax_Percentage'];
    printProductTotalPriceAfterDiscount =
        json['print_Product_Total_Price_After_Discount'];
    printProductTotalPriceIncludeTax =
        json['print_Product_Total_Price_Include_Tax'];
    printOrderClosedUser = json['print_Order_Closed_User'];
    printOrderCreatedUser = json['print_Order_Created_User'];
    printCheckNumber = json['print_Check_Number'];
    hideFreeModifierOptions = json['hide_Free_ModifierOptions'];
    autoPrintOnSave = json['auto_Print_OnSave'];
    printLanguage = json['print_language'];
    printerPaperSize = json['printerPaperSize'];
    printerPaperDirection = json['printerPaperDirection'];
    invoiceCategory = json['invoiceCategory'];
    defaultLanguage = json['default_Language'];
    secondLanguage = json['second_Language'];
    if (json['orderTypes'] != null) {
      orderTypes = <int>[];
      json['orderTypes'].forEach((v) {
        orderTypes!.add(v);
      });
    }
    if (json['users'] != null) {
      users = <String>[];
      json['users'].forEach((v) {
        users!.add(v.toString().toLowerCase());
      });
    }

    printedTitle = json['printedTitle'];
    fPrintedTitle = json['fPrintedTitle'];
    defaultCode = json['defaultCode'];
    secondCode = json['secondCode'];
    pointsMessage = json['pointsMessage'];
    fPointsMessage = json['fPointsMessage'];
    printCustomerPoints = json['print_Customer_Points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['header_Invoice_Message'] = headerInvoiceMessage;
    data['f_Header_Invoice_Message'] = fHeaderInvoiceMessage;
    data['footer_Invoice_Message'] = footerInvoiceMessage;
    data['f_Footer_Invoice_Message'] = fFooterInvoiceMessage;
    data['print_Company_Name'] = printCompanyName;
    data['print_Branch_Name'] = printBranchName;
    data['print_CR_No'] = printCRNo;
    data['print_Bank_Account'] = printBankAccount;
    data['print_Tax_Number'] = printTaxNumber;
    data['print_Payment_Type'] = printPaymentType;
    data['print_Order_Type'] = printOrderType;
    data['print_Order_Number'] = printOrderNumber;
    data['print_Unit_Size'] = printUnitSize;
    data['print_Product_SecondaryName'] = printProductSecondaryName;
    data['print_Calories'] = printCalories;
    data['print_SubTotal'] = printSubTotal;
    data['print_Round_Digit'] = printRoundDigit;
    data['print_Product_Unit'] = printProductUnit;
    data['print_Product_Unit_Price'] = printProductUnitPrice;
    data['print_Product_Total_Price'] = printProductTotalPrice;
    data['print_Product_Discount_Price'] = printProductDiscountPrice;
    data['print_Product_Free_Quantity'] = printProductFreeQuantity;
    data['print_Product_Total_Price_Before_Tax'] =
        printProductTotalPriceBeforeTax;
    data['print_Product_Tax_Amount'] = printProductTaxAmount;
    data['print_Product_Tax_Percentage'] = printProductTaxPercentage;
    data['print_Product_Total_Price_After_Discount'] =
        printProductTotalPriceAfterDiscount;
    data['print_Product_Total_Price_Include_Tax'] =
        printProductTotalPriceIncludeTax;
    data['print_Order_Closed_User'] = printOrderClosedUser;
    data['print_Order_Created_User'] = printOrderCreatedUser;
    data['print_Check_Number'] = printCheckNumber;
    data['hide_Free_ModifierOptions'] = hideFreeModifierOptions;
    data['auto_Print_OnSave'] = autoPrintOnSave;
    data['print_language'] = printLanguage;
    data['printerPaperSize'] = printerPaperSize;
    data['printerPaperDirection'] = printerPaperDirection;
    data['invoiceCategory'] = invoiceCategory;
    data['default_Language'] = defaultLanguage;
    data['second_Language'] = secondLanguage;
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    data['users'] = users;
    data['printedTitle'] = printedTitle;
    data['fPrintedTitle'] = fPrintedTitle;
    data['defaultCode'] = defaultCode;
    data['secondCode'] = secondCode;
    data['pointsMessage'] = pointsMessage;
    data['fPointsMessage'] = fPointsMessage;
    data['print_Customer_Points'] = printCustomerPoints;

    return data;
  }
}
