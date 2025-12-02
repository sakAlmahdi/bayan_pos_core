import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/model/order/group.dart';
import 'package:bayan_pos_core/data/model/order/unit.dart';
import 'package:bayan_pos_core/data/model/order/unit_mapper.dart';
import 'package:bayan_pos_core/data/model/product/Ingredients.dart';
import 'package:bayan_pos_core/data/model/product/modifer_mapper.dart';
import 'package:bayan_pos_core/data/model/product/modifier.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Product1 {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? sku;
  String? barcode;
  String? productTypeId;
  String? costType;
  int? priceType;
  String? salesMethod;
  double? price;
  double? cost;
  int? preparationTime;
  bool? activeQRScan;
  bool? qrScanOnSameDate;
  bool? enableSalesDiscount;
  double? discountPercentageLimit;
  bool? enableFreeQuantity;
  bool? enableDateExpire;
  bool? enableIMEISerial;
  bool? enableWeights;
  bool? scanPriceFromScale;
  bool? scalePriceIncludeTax;
  bool? independentPrinting;
  bool? calculateQuantityFromTotalPrice;
  bool? reservationRequired;
  int? scaleBarcodeDigits;
  int? scaleProductCodeDigits;
  int? scaleIntDigits;
  int? scaledecimalDigits;
  bool? scaleProductCodeFirstInBracode;
  String? availableStartDateTime;
  String? availableEndDateTime;
  String? description;
  String? fDescription;
  String? imageUrl;
  String? defaultSalesUnit;
  int? calories;
  int? minimumLevel;
  int? maximumLevel;
  String? categoryId;
  String? departmentId;
  int? productNature;
  bool? active = true;
  String? taxGroupId;
  String? subName;
  String? fSubName;
  String? promotionalName;
  String? fPromotionalName;
  String? tags;
  String? fTags;
  String? reference;

  bool? showAlertPreparationTime;

  final units = ToMany<Unit>();

  final modifiers = ToMany<Modifier>();

  final ingredients = ToMany<Ingredient>();
  final groups = ToMany<Group>();
  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  Product1({
    this.id,
    this.name,
    this.fName,
    this.sku,
    this.barcode,
    this.productTypeId,
    this.costType,
    this.priceType,
    this.salesMethod,
    this.price,
    this.cost,
    this.preparationTime,
    this.activeQRScan,
    this.qrScanOnSameDate,
    this.enableSalesDiscount,
    this.discountPercentageLimit,
    this.enableFreeQuantity,
    this.enableDateExpire,
    this.enableIMEISerial,
    this.enableWeights,
    this.scanPriceFromScale,
    this.scalePriceIncludeTax,
    this.independentPrinting,
    this.calculateQuantityFromTotalPrice,
    this.reservationRequired,
    this.scaleBarcodeDigits,
    this.scaleProductCodeDigits,
    this.scaleIntDigits,
    this.scaledecimalDigits,
    this.scaleProductCodeFirstInBracode,
    this.availableStartDateTime,
    this.availableEndDateTime,
    this.description,
    this.fDescription,
    this.imageUrl,
    this.calories,
    this.minimumLevel,
    this.maximumLevel,
    this.productNature,
    this.active,
    this.taxGroupId,
    this.subName,
    this.fSubName,
    this.promotionalName,
    this.fPromotionalName,
    this.tags,
    this.fTags,
    this.showAlertPreparationTime,
    this.reference,
    this.defaultSalesUnit,
  });

  Product1.fromJson(Map<String, dynamic> json,
      {Map<String, UnitMapper>? unitsMapper,
      Map<String, ModifiersMapper>? modifiersMapper}) {
    id = json['id'];
    idSeq = 0;
    name = json['name'];
    fName = json['fName'];
    sku = json['sku'];
    barcode = json['barcode'];
    productTypeId = json['productTypeId'].toString();
    costType = json['costType'].toString();
    priceType = json['priceType'];
    salesMethod = json['salesMethod'].toString();
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    cost = double.tryParse(json['cost'].toString()) ?? 0.0;

    preparationTime = json['preparation_Time'];
    showAlertPreparationTime = json['showAlertPreparationTime'];
    activeQRScan = json['activeQRScan'];
    qrScanOnSameDate = json['qrScanOnSameDate'];
    enableSalesDiscount = json['enable_Sales_Discount'];
    discountPercentageLimit =
        double.tryParse(json['discount_Percentage_Limit'].toString()) ?? 0.0;
    enableFreeQuantity = json['enable_Free_Quantity'];
    enableDateExpire = json['enable_Date_Expire'];
    enableIMEISerial = json['enable_IMEI_Serial'];
    enableWeights = json['enable_Weights'];
    scanPriceFromScale = json['scanPriceFromScale'];
    scalePriceIncludeTax = json['scalePriceIncludeTax'];
    independentPrinting = json['independentPrinting'];
    calculateQuantityFromTotalPrice = json['calculateQuantityFromTotalPrice'];
    reservationRequired = json['reservationRequired'];
    scaleBarcodeDigits = json['scaleBarcodeDigits'];
    scaleProductCodeDigits = json['scaleProductCodeDigits'];
    scaleIntDigits = json['scaleIntDigits'];
    scaledecimalDigits = json['scaledecimalDigits'];
    scaleProductCodeFirstInBracode = json['scaleProductCodeFirstInBracode'];
    availableStartDateTime = json['availableStartDateTime'];
    availableEndDateTime = json['availableEndDateTime'];
    description = json['description'];
    fDescription = json['fDescription'];
    imageUrl = json['imageUrl'];
    calories = json['calories'];
    minimumLevel = json['minimumLevel'];
    maximumLevel = json['maximumLevel'];
    categoryId = json['categoryId'];
    departmentId = json['departmentId'];
    productNature = json['productNature'];
    active = json['active'];
    taxGroupId = json['taxGroupId']?.toString().toLowerCase();
    independentPrinting = json['separateWhenPrinting'];

    if (json['units'] != null) {
      json['units'].forEach((v) {
        units.add(Unit.fromJson(v,
            unitsMapper: unitsMapper, modifiersMapper: modifiersMapper));
      });
    }
    if (json['modifiers'] != null) {
      json['modifiers'].forEach((v) {
        String id = v['id'].toString();
        modifiers
            .add(Modifier.fromJson(v, modifiersMapper: modifiersMapper?[id]));
      });
    }

    if (json['ingredients'] != null) {
      json['ingredients'].forEach((v) {
        ingredients.add(Ingredient.fromJson(v));
      });
    }
    if (json['groups'] != null) {
      json['groups'].forEach((v) {
        groups.add(Group.fromJson(v));
      });
    }
    subName = json['subName'];
    fSubName = json['fSubName'];
    promotionalName = json['promotionalName'];
    fPromotionalName = json['fPromotionalName'];
    tags = json['tags'];
    fTags = json['fTags'];
    reference = json['reference'];
    defaultSalesUnit = json['defaultSalesUnit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['idSe'] = 0;
    data['name'] = name;
    data['fName'] = fName;
    data['sku'] = sku;
    data['barcode'] = barcode;
    data['productTypeId'] = productTypeId;
    data['costType'] = costType;
    data['priceType'] = priceType;
    data['salesMethod'] = salesMethod;
    data['price'] = price;
    data['cost'] = cost;
    data['defaultSalesUnit'] = defaultSalesUnit;

    data['preparation_Time'] = preparationTime;
    data['showAlertPreparationTime'] = showAlertPreparationTime;
    data['activeQRScan'] = activeQRScan;
    data['qrScanOnSameDate'] = qrScanOnSameDate;
    data['enable_Sales_Discount'] = enableSalesDiscount;
    data['discount_Percentage_Limit'] = discountPercentageLimit;
    data['enable_Free_Quantity'] = enableFreeQuantity;
    data['enable_Date_Expire'] = enableDateExpire;
    data['enable_IMEI_Serial'] = enableIMEISerial;
    data['enable_Weights'] = enableWeights;
    data['scanPriceFromScale'] = scanPriceFromScale;
    data['scalePriceIncludeTax'] = scalePriceIncludeTax;
    data['independentPrinting'] = independentPrinting;
    data['calculateQuantityFromTotalPrice'] = calculateQuantityFromTotalPrice;
    data['reservationRequired'] = reservationRequired;
    data['scaleBarcodeDigits'] = scaleBarcodeDigits;
    data['scaleProductCodeDigits'] = scaleProductCodeDigits;
    data['scaleIntDigits'] = scaleIntDigits;
    data['scaledecimalDigits'] = scaledecimalDigits;
    data['scaleProductCodeFirstInBracode'] = scaleProductCodeFirstInBracode;
    data['availableStartDateTime'] = availableStartDateTime;
    data['availableEndDateTime'] = availableEndDateTime;
    data['description'] = description;
    data['fDescription'] = fDescription;
    data['imageUrl'] = imageUrl;
    data['calories'] = calories;
    data['minimumLevel'] = minimumLevel;
    data['maximumLevel'] = maximumLevel;
    data['units'] = units.map((v) => v.toJson()).toList();
    data['modifiers'] = modifiers.map((v) => v.toJson()).toList();
    data['ingredients'] = ingredients.map((v) => v.toJson()).toList();
    data['groups'] = groups.map((v) => v.toJson()).toList();
    data['categoryId'] = categoryId;
    data['departmentId'] = departmentId;
    data['productNature'] = productNature;
    data['active'] = active;
    data['taxGroupId'] = taxGroupId;
    data['independentPrinting'] = independentPrinting;
    data['subName'] = subName;
    data['fSubName'] = fSubName;
    data['promotionalName'] = promotionalName;
    data['fPromotionalName'] = fPromotionalName;
    data['tags'] = tags;
    data['fTags'] = fTags;
    data['reference'] = reference;

    return data;
  }
}
