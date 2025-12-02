import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/core/extensions/base_num_extension.dart';
import 'package:bayan_pos_core/data/model/order/option.dart';
import 'package:bayan_pos_core/data/model/order/order.dart';
import 'package:bayan_pos_core/data/model/order/unit_modifer.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class AppliedModifer {
  @Id()
  int? idSeq;
  final options = ToMany<AppliedOption>();
  final modifier = ToOne<UnitModifer>();

  double get getTotalOptionUnitPrice => options.isEmpty
      ? 0
      : options
          .map((element) => element.getOptionUnitPrice)
          .reduce((value, element) => value + element);

  double get totalTaxableAmt => options.isEmpty
      ? 0
      : options
          .map((element) => element.taxableAmt ?? 0)
          .reduce((value, element) => value + element);

  String? deviceCreatedOn;
  String? deviceCreatedBy;

  AppliedModifer copyWith({
    List<AppliedOption>? options,
    UnitModifer? modifer,
    String? deviceCreatedOn,
    String? deviceCreatedBy,
    bool? priceWithTax,
  }) {
    return AppliedModifer()
      ..deviceCreatedOn = deviceCreatedOn ?? this.deviceCreatedOn
      ..deviceCreatedBy = deviceCreatedBy ?? this.deviceCreatedBy
      ..options.addAll(options ?? this.options)
      ..modifier.target = modifer ?? modifier.target;
  }

  AppliedModifer();

  AppliedModifer.fromJson(Map<String, dynamic> json) {
    if (json['options'] != null) {
      json['options'].forEach((v) {
        options.add(AppliedOption.fromJson(v));
      });
    }
    modifier.target = json['modifier'] != null
        ? UnitModifer.fromJson(json['modifier'])
        : null;

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['options'] = options.map((v) => v.toJson().removeNull()).toList();
    if (modifier.target != null) {
      data['modifier'] = modifier.target!.toJson().removeNull();
    }

    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['options'] = options.map((v) => v.toJsonOrder().removeNull()).toList();
    if (modifier.target != null) {
      data['modifier'] = modifier.target!.toJson().removeNull();
    }

    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

@Entity()
class AppliedOption {
  @Id()
  int? idSeq;
  double quantity = 1;
  double freeQuantity = 0;
  double? taxableAmt = 0;

  bool priceWithTax = false;
  final option = ToOne<Option>();

  final taxInfo = ToOne<TaxInfo>();

  double get subTotal => freeQuantity >= quantity
      ? 0
      : (quantity - freeQuantity) * (option.target?.price.getZeroIfNull ?? 00);

  double get freeQtyUsed => quantity >= freeQuantity ? freeQuantity : quantity;

  double get remainQty => quantity - freeQuantity;

  double get getOptionUnitPrice =>
      freeQuantity >= quantity ? 0 : (option.target?.price ?? 0) / remainQty;

  String? deviceCreatedOn;
  String? deviceCreatedBy;

  AppliedOption({
    this.quantity = 1,
    this.freeQuantity = 0,
    this.taxableAmt = 0,
    this.deviceCreatedBy,
    this.deviceCreatedOn,
  });

  AppliedOption.fromJson(Map<String, dynamic> json) {
    quantity = double.tryParse(json['quantity'].toString()) ?? 0.0;
    freeQuantity = double.tryParse(json['freeQuantity'].toString()) ?? 0.0;
    option.target =
        json['option'] != null ? Option.fromJson(json['option']) : null;
    taxInfo.target =
        json['taxInfo'] != null ? TaxInfo.fromJson(json['taxInfo']) : null;
    taxableAmt = json['taxableAmt'];

    priceWithTax = json['priceWithTax'] ?? false;

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['quantity'] = quantity;
    data['freeQuantity'] = freeQuantity;
    if (option.target != null) {
      data['option'] = option.target!.toJson().removeNull();
    }
    if (taxInfo.target != null) {
      data['taxInfo'] = taxInfo.target!.toJson().removeNull();
    }
    data['subTotal'] = subTotal;
    data['freeQtyUsed'] = freeQtyUsed;
    data['taxableAmt'] = taxableAmt;
    data['priceWithTax'] = priceWithTax;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;

    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['quantity'] = quantity;
    data['freeQuantity'] = freeQuantity;
    if (option.target != null) {
      data['option'] = option.target!.toJsonOrder().removeNull();
    }
    if (taxInfo.target != null) {
      data['taxInfo'] = taxInfo.target!.toJson().removeNull();
    }
    data['subTotal'] = subTotal;
    data['freeQtyUsed'] = freeQtyUsed;
    data['taxableAmt'] = taxableAmt;
    data['priceWithTax'] = priceWithTax;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;

    return data;
  }
}
