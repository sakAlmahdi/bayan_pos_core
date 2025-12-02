import 'package:objectbox/objectbox.dart';

@Entity()
class ViewSettings {
  @Id()
  int? idSeq;
  @Transient()
  CateSettings? get cateSettings => cateSettingsData.target;
  @Transient()
  List<ProductViewSettings>? get productViewSettings => productViewSettingsData;
  @Transient()
  final cateSettingsData = ToOne<CateSettings>();
  @Transient()
  final productViewSettingsData = ToMany<ProductViewSettings>();

  ViewSettings({
    CateSettings? cateSettings,
    List<ProductViewSettings>? productViewSettings,
  }) {
    cateSettingsData.target = cateSettings;
    productViewSettingsData.clear();
    productViewSettingsData.addAll(productViewSettings ?? []);
  }

  ViewSettings.fromJson(Map<dynamic, dynamic> json) {
    cateSettingsData.target = json['cateSettings'] != null
        ? CateSettings.fromJson(json['cateSettings'])
        : null;
    if (json['productViewSettings'] != null) {
      json['productViewSettings'].forEach((v) {
        productViewSettingsData.add(ProductViewSettings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (cateSettingsData.target != null) {
      data['cateSettings'] = cateSettingsData.target!.toJson();
    }
    data['productViewSettings'] =
        productViewSettingsData.map((v) => v.toJson()).toList();
    return data;
  }
}

class CateSettings {
  bool? showAllCate;

  CateSettings({this.showAllCate});

  CateSettings.fromJson(Map<dynamic, dynamic> json) {
    showAllCate = json['showAllCate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['showAllCate'] = showAllCate;
    return data;
  }
}

class ProductViewSettings {
  int? viewCode;
  bool? showImage;
  bool? showPrice;
  bool? showColorFlag;
  bool? showOptionAfterSelect;
  int? numOfProductsInRow;
  int? minProductsInRow;
  int? maxProductsInRow;

  ProductViewSettings({
    this.viewCode,
    this.showImage,
    this.showPrice,
    this.showColorFlag,
    this.showOptionAfterSelect,
    this.numOfProductsInRow,
    this.maxProductsInRow,
    this.minProductsInRow,
  });

  ProductViewSettings.fromJson(Map<dynamic, dynamic> json) {
    viewCode = json['viewCode'];
    showImage = json['showImage'];
    showPrice = json['showPrice'];
    showColorFlag = json['showColorFlag'];
    showOptionAfterSelect = json['showOptionAfterSelect'];
    numOfProductsInRow = json['numOfProductsInRow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['viewCode'] = viewCode;
    data['showImage'] = showImage;
    data['showPrice'] = showPrice;
    data['showColorFlag'] = showColorFlag;
    data['showOptionAfterSelect'] = showOptionAfterSelect;
    data['numOfProductsInRow'] = numOfProductsInRow;
    return data;
  }

  ProductViewSettings copyWith({
    int? viewCode,
    bool? showImage,
    bool? showPrice,
    bool? showColorFlag,
    bool? showOptionAfterSelect,
    int? numOfProductsInRow,
    int? minProductsInRow,
    int? maxProductsInRow,
  }) {
    return ProductViewSettings(
      viewCode: viewCode ?? this.viewCode,
      showImage: showImage ?? this.showImage,
      showPrice: showPrice ?? this.showPrice,
      showColorFlag: showColorFlag ?? this.showColorFlag,
      showOptionAfterSelect:
          showOptionAfterSelect ?? this.showOptionAfterSelect,
      numOfProductsInRow: numOfProductsInRow ?? this.numOfProductsInRow,
      minProductsInRow: minProductsInRow ?? this.minProductsInRow,
      maxProductsInRow: maxProductsInRow ?? this.maxProductsInRow,
    );
  }
}
