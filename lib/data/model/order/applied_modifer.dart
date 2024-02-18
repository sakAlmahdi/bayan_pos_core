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

  AppliedModifer copyWith({
    List<AppliedOption>? options,
    UnitModifer? modifer,
  }) {
    return AppliedModifer()
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['options'] = options.map((v) => v.toJson().removeNull()).toList();
    if (modifier.target != null) {
      data['modifier'] = modifier.target!.toJson().removeNull();
    }
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['options'] = options.map((v) => v.toJsonOrder().removeNull()).toList();
    if (modifier.target != null) {
      data['modifier'] = modifier.target!.toJson().removeNull();
    }
    return data;
  }
}

@Entity()
class AppliedOption {
  @Id()
  int? idSeq;
  double quntity = 1;
  double freeQuntity = 0;
  bool priceWithTax = false;
  final option = ToOne<Option>();

  final taxInfo = ToOne<TaxInfo>();

  double get subTotal => freeQuntity >= quntity
      ? 0
      : (quntity - freeQuntity) * (option.target?.price.getZeroIfNull ?? 00);

  double get freeQtyUsed => quntity >= freeQuntity ? freeQuntity : quntity;

  AppliedOption({
    this.quntity = 1,
    this.freeQuntity = 0,
  });

  AppliedOption.fromJson(Map<String, dynamic> json) {
    quntity = double.tryParse(json['quntity'].toString()) ?? 0.0;
    freeQuntity = double.tryParse(json['freeQuntity'].toString()) ?? 0.0;
    option.target =
        json['option'] != null ? Option.fromJson(json['option']) : null;
    taxInfo.target =
        json['taxInfo'] != null ? TaxInfo.fromJson(json['taxInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['quntity'] = quntity;
    data['freeQuntity'] = freeQuntity;
    if (option.target != null) {
      data['option'] = option.target!.toJson().removeNull();
    }
    if (taxInfo.target != null) {
      data['taxInfo'] = taxInfo.target!.toJson().removeNull();
    }
    data['subTotal'] = subTotal;
    data['freeQtyUsed'] = freeQtyUsed;
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['quntity'] = quntity;
    data['freeQuntity'] = freeQuntity;
    if (option.target != null) {
      data['option'] = option.target!.toJsonOrder().removeNull();
    }
    if (taxInfo.target != null) {
      data['taxInfo'] = taxInfo.target!.toJson().removeNull();
    }
    data['subTotal'] = subTotal;
    data['freeQtyUsed'] = freeQtyUsed;
    return data;
  }
}
