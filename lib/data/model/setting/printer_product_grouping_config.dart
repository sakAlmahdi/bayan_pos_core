import 'package:objectbox/objectbox.dart';

@Entity()
class PrinterProductGroupingConfig {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  int? splitMode;
  List<String>? productIds;
  List<String>? departmentIds;
  List<String>? categoryIds;
  List<String>? menuIds;

  SplitMode get getSplitMode => convertStringToSplitMode(splitMode);

  PrinterProductGroupingConfig(
      {this.id,
      this.name,
      this.productIds,
      this.departmentIds,
      this.categoryIds,
      this.menuIds});

  PrinterProductGroupingConfig.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    productIds = json['productIds'];
    departmentIds = json['departmentIds'];
    categoryIds = json['categoryIds'];
    menuIds = json['menuIds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['productIds'] = productIds;
    data['departmentIds'] = departmentIds;
    data['categoryIds'] = categoryIds;
    data['menuIds'] = menuIds;
    return data;
  }

  PrinterProductGroupingConfig copyWith(
      {String? id,
      String? name,
      List<String>? productIds,
      List<String>? departmentIds,
      List<String>? categoryIds,
      List<String>? menuIds}) {
    return PrinterProductGroupingConfig(
      id: id ?? this.id,
      name: name ?? this.name,
      productIds: productIds ?? this.productIds,
      departmentIds: departmentIds ?? this.departmentIds,
      categoryIds: categoryIds ?? this.categoryIds,
      menuIds: menuIds ?? this.menuIds,
    );
  }

  static List<PrinterProductGroupingConfig> fromList(List<dynamic> data) =>
      data.map((e) => PrinterProductGroupingConfig.fromJson(e)).toList();
}

enum SplitMode {
  byProduct,
  byDepartment,
  byCategory,
  byMenu,
  custom,
}

SplitMode convertStringToSplitMode(int? key) {
  switch (key) {
    case 0:
      return SplitMode.byProduct;
    case 1:
      return SplitMode.byDepartment;
    case 2:
      return SplitMode.byCategory;
    case 3:
      return SplitMode.byMenu;
  }
  return SplitMode.custom;
}
