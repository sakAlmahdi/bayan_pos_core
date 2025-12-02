import 'package:objectbox/objectbox.dart';

@Entity()
class CashierSetting {
  @Id()
  int? idSeq;
  bool? enableCashSales;
  bool? enableCreditCardSales;
  bool? enableCustomerSales;
  bool? enableFreeQuantity;
  bool? enableEditItemName;
  bool? enableSalesDiscount;
  bool? enableChangePrice;
  bool? enableProductPackages;
  bool? enableTablesSystem;
  bool? tableGuestCountRequired;
  bool? tableRequired;
  double? discountPercentageLimit;
  String? defaultCustomerId;
  String? priceListId;
  bool? daily;
  bool? submittingRequestsDelayMinutes;
  bool? inactiveUsersLogoutMinutes;
  bool? maximumReturnPeriodMinutes;
  bool? requireOrderTypesForOrders;
  String? roundingType;
  double? roundDigits;
  String? kitchenSortingType;
  String? printSortingType;
  bool? activeTips;
  bool? discountRequireCustomerInfo;
  bool? returnRequireCustomerInfo;
  bool? requireCancelReason;
  bool? autoSentOrderToKitchenAfterPaid;
  bool? autoSyncDataAtStartOfDay;
  bool? autoPrintProductsReport;
  bool? autoPrintTillsReport;
  bool? preventEndingDayBeforeInventoryCount;

  String? imei;

  CashierSetting(
      {this.enableCashSales,
      this.enableCreditCardSales,
      this.enableCustomerSales,
      this.enableFreeQuantity,
      this.enableEditItemName,
      this.enableSalesDiscount,
      this.enableChangePrice,
      this.enableProductPackages,
      this.enableTablesSystem,
      this.tableGuestCountRequired,
      this.tableRequired,
      this.discountPercentageLimit,
      this.defaultCustomerId,
      this.priceListId,
      this.daily,
      this.submittingRequestsDelayMinutes,
      this.inactiveUsersLogoutMinutes,
      this.maximumReturnPeriodMinutes,
      this.requireOrderTypesForOrders,
      this.roundingType,
      this.roundDigits,
      this.kitchenSortingType,
      this.printSortingType,
      this.activeTips,
      this.discountRequireCustomerInfo,
      this.returnRequireCustomerInfo,
      this.requireCancelReason,
      this.autoSentOrderToKitchenAfterPaid,
      this.autoSyncDataAtStartOfDay,
      this.autoPrintProductsReport,
      this.autoPrintTillsReport,
      this.preventEndingDayBeforeInventoryCount,
      this.imei});

  CashierSetting.fromJson(Map<String, dynamic> json) {
    enableCashSales = json['enable_Cash_Sales1'];
    enableCreditCardSales = json['enable_CreditCard_Sales2'];
    enableCustomerSales = json['enable_Customer_Sales3'];
    enableFreeQuantity = json['enable_Free_Quantity4'];
    enableEditItemName = json['enable_Edit_ItemName5'];
    enableSalesDiscount = json['enable_Sales_Discount6'];
    enableChangePrice = json['enable_Change_Price7'];
    enableProductPackages = json['enable_Product_Packages8'];
    enableTablesSystem = json['enable_Tables_System9'];
    tableGuestCountRequired = json['table_GuestCount_Required10'];
    tableRequired = json['table_Required11'];
    discountPercentageLimit =
        double.tryParse(json['discount_Percentage_Limit12'].toString()) ?? 0.0;
    defaultCustomerId = json['defaultCustomerId13'];
    priceListId = json['priceListId14'];
    daily = json['daily15'];
    submittingRequestsDelayMinutes =
        json['submitting_Requests_Delay_Minutes16'];
    inactiveUsersLogoutMinutes = json['inactive_Users_Logout__Minutes17'];
    maximumReturnPeriodMinutes = json['maximum_Return_Period_Minutes18'];
    requireOrderTypesForOrders = json['require_Order_Types_For_Orders19'];
    roundingType = json['rounding_Type20'];
    roundDigits = double.tryParse(json['round_Digits21'].toString()) ?? 0.0;
    kitchenSortingType = json['kitchen_Sorting_Type22'];
    printSortingType = json['print_Sorting_Type23'];
    activeTips = json['active_Tips24'];
    discountRequireCustomerInfo = json['discount_Require_Customer_Info25'];
    returnRequireCustomerInfo = json['return_Require_Customer_Info26'];
    requireCancelReason = json['require_Cancel_Reason27'];
    autoSentOrderToKitchenAfterPaid =
        json['auto_Sent_Order_To_Kitchen_After_Paid28'];
    autoSyncDataAtStartOfDay = json['auto_Sync_Data_At_Start_Of_Day29'];
    autoPrintProductsReport = json['auto_Print_Products_Report30'];
    autoPrintTillsReport = json['auto_Print_Tills_Report31'];
    preventEndingDayBeforeInventoryCount =
        json['prevent_Ending_Day_Before_Inventory_Count32'];
    imei = json['imei'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['enable_Cash_Sales1'] = enableCashSales;
    data['enable_CreditCard_Sales2'] = enableCreditCardSales;
    data['enable_Customer_Sales3'] = enableCustomerSales;
    data['enable_Free_Quantity4'] = enableFreeQuantity;
    data['enable_Edit_ItemName5'] = enableEditItemName;
    data['enable_Sales_Discount6'] = enableSalesDiscount;
    data['enable_Change_Price7'] = enableChangePrice;
    data['enable_Product_Packages8'] = enableProductPackages;
    data['enable_Tables_System9'] = enableTablesSystem;
    data['table_GuestCount_Required10'] = tableGuestCountRequired;
    data['table_Required11'] = tableRequired;
    data['discount_Percentage_Limit12'] = discountPercentageLimit;
    data['defaultCustomerId13'] = defaultCustomerId;
    data['priceListId14'] = priceListId;
    data['daily15'] = daily;
    data['submitting_Requests_Delay_Minutes16'] =
        submittingRequestsDelayMinutes;
    data['inactive_Users_Logout__Minutes17'] = inactiveUsersLogoutMinutes;
    data['maximum_Return_Period_Minutes18'] = maximumReturnPeriodMinutes;
    data['require_Order_Types_For_Orders19'] = requireOrderTypesForOrders;
    data['rounding_Type20'] = roundingType;
    data['round_Digits21'] = roundDigits;
    data['kitchen_Sorting_Type22'] = kitchenSortingType;
    data['print_Sorting_Type23'] = printSortingType;
    data['active_Tips24'] = activeTips;
    data['discount_Require_Customer_Info25'] = discountRequireCustomerInfo;
    data['return_Require_Customer_Info26'] = returnRequireCustomerInfo;
    data['require_Cancel_Reason27'] = requireCancelReason;
    data['auto_Sent_Order_To_Kitchen_After_Paid28'] =
        autoSentOrderToKitchenAfterPaid;
    data['auto_Sync_Data_At_Start_Of_Day29'] = autoSyncDataAtStartOfDay;
    data['auto_Print_Products_Report30'] = autoPrintProductsReport;
    data['auto_Print_Tills_Report31'] = autoPrintTillsReport;
    data['prevent_Ending_Day_Before_Inventory_Count32'] =
        preventEndingDayBeforeInventoryCount;
    data['imei'] = imei;
    return data;
  }
}
