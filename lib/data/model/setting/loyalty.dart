import 'package:objectbox/objectbox.dart';

@Entity()
class LoyaltySetting {
  @Id()
  int? idSeq;
  bool? enableSystem;
  String? loyaltyMethod;
  double? lowestOrderPrice;
  double? delayInEarningPointsMinutes;
  String? bonusType;
  double? bonusValue;
  double? maximumBonusLimit;
  double? requiredBonusPoint;
  double? bonusValidityDays;
  bool? enableSMSNotifications;
  bool? displayBonusOnNewOrder;
  bool? printBonusBalanceOnNewOrder;

  LoyaltySetting(
      {this.enableSystem,
      this.loyaltyMethod,
      this.lowestOrderPrice,
      this.delayInEarningPointsMinutes,
      this.bonusType,
      this.bonusValue,
      this.maximumBonusLimit,
      this.requiredBonusPoint,
      this.bonusValidityDays,
      this.enableSMSNotifications,
      this.displayBonusOnNewOrder,
      this.printBonusBalanceOnNewOrder});

  LoyaltySetting.fromJson(Map<String, dynamic> json) {
    enableSystem = json['enableSystem'];
    loyaltyMethod = json['loyaltyMethod'];
    lowestOrderPrice =
        double.tryParse(json['lowest_Order_Price'].toString()) ?? 0.0;
    delayInEarningPointsMinutes =
        double.tryParse(json['delay_In_Earning_Points_Minutes'].toString()) ??
            0.0;
    bonusType = json['bonusType'];
    bonusValue = double.tryParse(json['bonusValue'].toString()) ?? 0.0;
    maximumBonusLimit =
        double.tryParse(json['maximum_Bonus_Limit'].toString()) ?? 0.0;
    requiredBonusPoint =
        double.tryParse(json['required_Bonus_Point'].toString()) ?? 0.0;
    bonusValidityDays =
        double.tryParse(json['bonus_Validity_Days'].toString()) ?? 0.0;
    enableSMSNotifications = json['enable_SMS_Notifications'];
    displayBonusOnNewOrder = json['display_Bonus_On_New_Order'];
    printBonusBalanceOnNewOrder = json['print_Bonus_balance_On_New_Order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['enableSystem'] = enableSystem;
    data['loyaltyMethod'] = loyaltyMethod;
    data['lowest_Order_Price'] = lowestOrderPrice;
    data['delay_In_Earning_Points_Minutes'] = delayInEarningPointsMinutes;
    data['bonusType'] = bonusType;
    data['bonusValue'] = bonusValue;
    data['maximum_Bonus_Limit'] = maximumBonusLimit;
    data['required_Bonus_Point'] = requiredBonusPoint;
    data['bonus_Validity_Days'] = bonusValidityDays;
    data['enable_SMS_Notifications'] = enableSMSNotifications;
    data['display_Bonus_On_New_Order'] = displayBonusOnNewOrder;
    data['print_Bonus_balance_On_New_Order'] = printBonusBalanceOnNewOrder;
    return data;
  }
}
