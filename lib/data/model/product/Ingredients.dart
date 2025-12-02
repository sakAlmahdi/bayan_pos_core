import 'package:objectbox/objectbox.dart';

@Entity()
class Ingredient {
  @Id()
  int? idSeq;
  bool? isActive;
  int? displayOrder;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? ingredientItemId;
  String? ingredientItemName;
  String? barcode;
  String? unitOfMeasureName;
  double? warehouseToIngredientFactor;
  double? quantity;
  double? wasteQuantity;
  double? unitCost;
  double? estimatedUnitCost;
  double? yieldPercentage;
  List<String>? orderTypes;

  Ingredient(
      {this.isActive,
      this.displayOrder,
      this.id,
      this.ingredientItemId,
      this.ingredientItemName,
      this.barcode,
      this.unitOfMeasureName,
      this.warehouseToIngredientFactor,
      this.quantity,
      this.wasteQuantity,
      this.unitCost,
      this.estimatedUnitCost,
      this.yieldPercentage,
      this.orderTypes});

  Ingredient.fromJson(Map<String, dynamic> json) {
    isActive = json['isActive'];
    displayOrder = json['displayOrder'];
    id = json['id'];
    ingredientItemId = json['ingredientItemId'];
    ingredientItemName = json['ingredientItemName'];
    barcode = json['barcode'];
    unitOfMeasureName = json['unitOfMeasureName'];
    warehouseToIngredientFactor =
        double.tryParse(json['warehouseToIngredientFactor'].toString()) ?? 0.0;
    quantity = double.tryParse(json['quantity'].toString()) ?? 0.0;
    wasteQuantity = double.tryParse(json['wasteQuantity'].toString()) ?? 0.0;
    unitCost = double.tryParse(json['unitCost'].toString()) ?? 0.0;
    estimatedUnitCost =
        double.tryParse(json['estimatedUnitCost'].toString()) ?? 0.0;
    yieldPercentage =
        double.tryParse(json['yieldPercentage'].toString()) ?? 0.0;
    if (json['orderTypes'] != null) {
      orderTypes = <String>[];
      json['orderTypes'].forEach((v) {
        orderTypes!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['isActive'] = isActive;
    data['displayOrder'] = displayOrder;
    data['id'] = id;
    data['ingredientItemId'] = ingredientItemId;
    data['ingredientItemName'] = ingredientItemName;
    data['barcode'] = barcode;
    data['unitOfMeasureName'] = unitOfMeasureName;
    data['warehouseToIngredientFactor'] = warehouseToIngredientFactor;
    data['quantity'] = quantity;
    data['wasteQuantity'] = wasteQuantity;
    data['unitCost'] = unitCost;
    data['estimatedUnitCost'] = estimatedUnitCost;
    data['yieldPercentage'] = yieldPercentage;
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    return data;
  }
}
