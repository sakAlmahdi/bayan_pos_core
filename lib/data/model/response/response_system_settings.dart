import 'package:bayan_pos_core/data/model/setting/cashier_setting.dart';
import 'package:bayan_pos_core/data/model/setting/loyalty.dart';
import 'package:bayan_pos_core/data/model/setting/policy_setting.dart';
import 'package:bayan_pos_core/data/model/setting/tax_setting.dart';
import 'package:bayan_pos_core/data/model/setting/tenant_setting.dart';

class ResponseSystemSettings {
  TenantSetting? tenantSetting;
  LoyaltySetting? loyaltySetting;
  CashierSetting? cashierSetting;
  TaxSetting? taxSetting;
  PolicySetting? policySetting;

  ResponseSystemSettings(
      {this.tenantSetting,
      this.loyaltySetting,
      this.cashierSetting,
      this.taxSetting,
      this.policySetting});

  ResponseSystemSettings.fromJson(Map<String, dynamic> json) {
    tenantSetting = json['tenantSetting'] != null
        ? new TenantSetting.fromJson(json['tenantSetting'])
        : null;
    loyaltySetting = json['loyaltySetting'] != null
        ? new LoyaltySetting.fromJson(json['loyaltySetting'])
        : null;
    cashierSetting = json['cashierSetting'] != null
        ? new CashierSetting.fromJson(json['cashierSetting'])
        : null;
    taxSetting = json['taxSetting'] != null
        ? new TaxSetting.fromJson(json['taxSetting'])
        : null;
    policySetting = json['policySetting'] != null
        ? new PolicySetting.fromJson(json['policySetting'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tenantSetting != null) {
      data['tenantSetting'] = this.tenantSetting!.toJson();
    }
    if (this.loyaltySetting != null) {
      data['loyaltySetting'] = this.loyaltySetting!.toJson();
    }
    if (this.cashierSetting != null) {
      data['cashierSetting'] = this.cashierSetting!.toJson();
    }
    if (this.taxSetting != null) {
      data['taxSetting'] = this.taxSetting!.toJson();
    }
    if (this.policySetting != null) {
      data['policySetting'] = this.policySetting!.toJson();
    }
    return data;
  }
}
