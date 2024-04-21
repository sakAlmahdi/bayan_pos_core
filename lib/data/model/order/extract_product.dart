import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/price_type_enum.dart';
import 'package:bayan_pos_core/data/enum/product_type_enum.dart';
import 'package:bayan_pos_core/data/model/order/group.dart';
import 'package:bayan_pos_core/data/model/order/unit.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ExtractProduct {
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
  int? calories;
  int? minimumLevel;
  int? maximumLevel;
  @Index(type: IndexType.hash)
  String? categoryId;
  @Index(type: IndexType.hash)
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
  // bool? showAlertPreparationTime;

  final units = ToMany<Unit>();

  final groups = ToMany<Group>();

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  @Transient()
  String get idUniq => getId();

  @Transient()
  ProductType get getProductType => convertStringToProductType(productNature);

  @Transient()
  PriceType get getPriceType => convertStringToPriceType(priceType);

  ExtractProduct({
    this.idSeq,
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
    this.categoryId,
    this.departmentId,
    this.active,
    this.productNature,
    this.taxGroupId,
    this.subName,
    this.fSubName,
    this.promotionalName,
    this.fPromotionalName,
    this.tags,
    this.fTags,
    // this.showAlertPreparationTime,
  });

  ExtractProduct.fromJson(Map<String, dynamic> json) {
    idSeq = json['idSeq'];
    id = json['id'];
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
    // showAlertPreparationTime = json['showAlertPreparationTime'];
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

    if (json['units'] != null) {
      json['units'].forEach((v) {
        units.add(Unit.fromJson(v));
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['idSeq'] = 0;
    data['id'] = id;
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
    data['preparation_Time'] = preparationTime;
    // data['showAlertPreparationTime'] = showAlertPreparationTime;
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
    data['minimumLevel'] = minimumLevel;
    data['calories'] = calories;
    data['maximumLevel'] = maximumLevel;
    data['units'] = units.map((v) => v.toJson()).toList();
    data['groups'] = groups.map((v) => v.toJson()).toList();
    data['categoryId'] = categoryId;
    data['departmentId'] = departmentId;
    data['productNature'] = productNature;
    data['active'] = active;
    data['taxGroupId'] = taxGroupId;
    data['subName'] = subName;
    data['fSubName'] = fSubName;
    data['promotionalName'] = promotionalName;
    data['fPromotionalName'] = fPromotionalName;
    data['subName'] = subName;
    data['fSubName'] = fSubName;
    data['promotionalName'] = promotionalName;
    data['fPromotionalName'] = fPromotionalName;
    data['tags'] = tags;
    data['fTags'] = fTags;

    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['priceType'] = priceType;
    data['price'] = price;
    data['cost'] = cost;
    data['preparation_Time'] = preparationTime;
    data['enable_Sales_Discount'] = enableSalesDiscount;
    data['discount_Percentage_Limit'] = discountPercentageLimit;
    data['enable_Free_Quantity'] = enableFreeQuantity;
    data['enable_Weights'] = enableWeights;
    data['availableStartDateTime'] = availableStartDateTime;
    data['availableEndDateTime'] = availableEndDateTime;
    data['description'] = description;
    data['fDescription'] = fDescription;
    data['imageUrl'] = imageUrl;
    data['calories'] = calories;
    data['productNature'] = productNature;
    data['taxGroupId'] = taxGroupId;

    return data;
  }

  ExtractProduct copyWith(
      {int? idSeq,
      String? id,
      String? name,
      String? fName,
      String? sku,
      String? barcode,
      String? productTypeId,
      String? costType,
      int? priceType,
      String? salesMethod,
      double? price,
      double? cost,
      String? defaultSalesUnit,
      int? preparationTime,
      bool? activeQRScan,
      bool? qrScanOnSameDate,
      bool? enableSalesDiscount,
      double? discountPercentageLimit,
      bool? enableFreeQuantity,
      bool? enableDateExpire,
      bool? enableIMEISerial,
      bool? enableWeights,
      bool? scanPriceFromScale,
      bool? scalePriceIncludeTax,
      bool? independentPrinting,
      bool? calculateQuantityFromTotalPrice,
      bool? reservationRequired,
      int? scaleBarcodeDigits,
      int? scaleProductCodeDigits,
      int? scaleIntDigits,
      int? scaledecimalDigits,
      bool? scaleProductCodeFirstInBracode,
      String? availableStartDateTime,
      String? availableEndDateTime,
      String? description,
      String? fDescription,
      String? imageUrl,
      int? calories,
      int? minimumLevel,
      int? maximumLevel,
      String? categoryId,
      String? departmentId,
      int? productNature,
      bool? active = true,
      String? taxGroupId,
      bool? separateWhenPrinting,
      String? subName,
      String? fSubName,
      String? promotionalName,
      String? fPromotionalName,
      String? tags,
      String? fTags,
      bool? showAlertPreparationTime}) {
    return ExtractProduct(
      idSeq: idSeq ?? this.idSeq,
      id: id ?? this.id,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      sku: sku ?? this.sku,
      barcode: barcode ?? this.barcode,
      productTypeId: productTypeId ?? this.productTypeId,
      costType: costType ?? this.costType,
      priceType: priceType ?? this.priceType,
      salesMethod: salesMethod ?? this.salesMethod,
      price: price ?? this.price,
      cost: cost ?? this.cost,
      preparationTime: preparationTime ?? this.preparationTime,
      activeQRScan: activeQRScan ?? this.activeQRScan,
      qrScanOnSameDate: qrScanOnSameDate ?? this.qrScanOnSameDate,
      enableSalesDiscount: enableSalesDiscount ?? this.enableSalesDiscount,
      discountPercentageLimit:
          discountPercentageLimit ?? this.discountPercentageLimit,
      enableFreeQuantity: enableFreeQuantity ?? this.enableFreeQuantity,
      enableDateExpire: enableDateExpire ?? this.enableDateExpire,
      enableIMEISerial: enableIMEISerial ?? this.enableIMEISerial,
      enableWeights: enableWeights ?? this.enableWeights,
      scanPriceFromScale: scanPriceFromScale ?? this.scanPriceFromScale,
      scalePriceIncludeTax: scalePriceIncludeTax ?? this.scalePriceIncludeTax,
      independentPrinting: independentPrinting ?? this.independentPrinting,
      calculateQuantityFromTotalPrice: calculateQuantityFromTotalPrice ??
          this.calculateQuantityFromTotalPrice,
      reservationRequired: reservationRequired ?? this.reservationRequired,
      scaleBarcodeDigits: scaleBarcodeDigits ?? this.scaleBarcodeDigits,
      scaleProductCodeDigits:
          scaleProductCodeDigits ?? this.scaleProductCodeDigits,
      scaleIntDigits: scaleIntDigits ?? this.scaleIntDigits,
      scaledecimalDigits: scaledecimalDigits ?? this.scaledecimalDigits,
      scaleProductCodeFirstInBracode:
          scaleProductCodeFirstInBracode ?? this.scaleProductCodeFirstInBracode,
      availableStartDateTime:
          availableStartDateTime ?? this.availableStartDateTime,
      availableEndDateTime: availableEndDateTime ?? this.availableEndDateTime,
      description: description ?? this.description,
      fDescription: fDescription ?? this.fDescription,
      imageUrl: imageUrl ?? this.imageUrl,
      calories: calories ?? this.calories,
      minimumLevel: minimumLevel ?? this.minimumLevel,
      maximumLevel: maximumLevel ?? this.maximumLevel,
      categoryId: categoryId ?? this.categoryId,
      departmentId: departmentId ?? this.departmentId,
      active: active ?? this.active,
      productNature: productNature ?? this.productNature,
      taxGroupId: taxGroupId ?? this.taxGroupId,
      subName: subName ?? this.subName,
      fSubName: fSubName ?? this.fSubName,
      promotionalName: promotionalName ?? this.promotionalName,
      fPromotionalName: fPromotionalName ?? this.fPromotionalName,
      tags: tags ?? this.tags,
      fTags: fTags ?? this.fTags,
      // showAlertPreparationTime:
      //     showAlertPreparationTime ?? this.showAlertPreparationTime,
    );
  }

  String getId() {
    String? ids;

    return "${id ?? ''};${ids ?? ''}";
  }
}
