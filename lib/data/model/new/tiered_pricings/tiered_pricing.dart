import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class TieredPricing {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  String? fName;
  DateTime? startDate;
  DateTime? endDate;
  String? startTime;
  String? endTime;
  List<int>? days;
  List<int>? orderTypes;

  final products = ToMany<TieredPricingProduct>();
  List<String>? customers;
  List<String>? customerTypes;
  bool? applyForAllCustomers;
  bool? applyForAllBranches;

  TieredPricing({
    this.id,
    this.name,
    this.fName,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.days,
    this.orderTypes,
    this.customers,
    this.customerTypes,
    this.applyForAllCustomers,
    this.applyForAllBranches,
  });

  factory TieredPricing.fromJson(Map<String, dynamic> json) {
    var model = TieredPricing(
      id: json['id'] as String?,
      name: json['name'] as String?,
      fName: json['fName'] as String?,
      startDate: json['start_Date'] != null
          ? DateTime.parse(json['start_Date'] as String)
          : null,
      endDate: json['end_Date'] != null
          ? DateTime.parse(json['end_Date'] as String)
          : null,
      startTime: json['start_Time'] as String?,
      endTime: json['end_Time'] as String?,
      days: json['days'] != null ? List<int>.from(json['days'] as List) : null,
      orderTypes: json['orderTypes'] != null
          ? List<int>.from(json['orderTypes'] as List)
          : null,
      customers: json['customers'] != null
          ? List<String>.from(json['customers'] as List)
          : null,
      customerTypes: json['customerTypes'] != null
          ? List<String>.from(json['customerTypes'] as List)
          : null,
      applyForAllCustomers: json['applyForAllCustomers'] as bool?,
      applyForAllBranches: json['applyForAllBranches'] as bool?,
    );
    if (json['products'] != null) {
      model.products.addAll((json['products'] as List)
          .map((item) => TieredPricingProduct.fromJson(item))
          .toList());
    }

    return model;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'fName': fName,
      'start_Date': startDate?.toIso8601String(),
      'end_Date': endDate?.toIso8601String(),
      'start_Time': startTime,
      'end_Time': endTime,
      'days': days,
      'orderTypes': orderTypes,
      'products': products?.map((item) => item.toJson()).toList(),
      'customers': customers,
      'customerTypes': customerTypes,
      'applyForAllCustomers': applyForAllCustomers,
      'applyForAllBranches': applyForAllBranches,
    };
  }
}

@Entity()
class TieredPricingProduct {
  @Id()
  int? idSeq;

  String? id;

  final units = ToMany<TieredPricingProductUnit>();

  TieredPricingProduct({
    this.id,
  });

  factory TieredPricingProduct.fromJson(Map<String, dynamic> json) {
    var model = TieredPricingProduct(
      id: json['id'] as String?,
    );
    if (json['units'] != null) {
      model.units.addAll((json['units'] as List)
          .map((item) => TieredPricingProductUnit.fromJson(item))
          .toList());
    }
    return model;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'units': units.map((item) => item.toJson()).toList(),
    };
  }
}

@Entity()
class TieredPricingProductUnit {
  @Id()
  int? idSeq;

  String? id;
  String? unitOfMeasureId;
  String? priceListId;
  double? minQuantity;
  double? maxQuantity;
  double? price;

  TieredPricingProductUnit({
    this.id,
    this.unitOfMeasureId,
    this.priceListId,
    this.minQuantity,
    this.maxQuantity,
    this.price,
  });

  factory TieredPricingProductUnit.fromJson(Map<String, dynamic> json) {
    return TieredPricingProductUnit(
      id: json['id'] as String?,
      unitOfMeasureId: json['unitOfMeasureId'] as String?,
      priceListId: json['priceListId'] as String?,
      minQuantity: json['minQuantity'] as double?,
      maxQuantity: json['maxQuantity'] as double?,
      price: json['price'] as double?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'unitOfMeasureId': unitOfMeasureId,
      'priceListId': priceListId,
      'minQuantity': minQuantity,
      'maxQuantity': maxQuantity,
      'price': price,
    };
  }
}
