import 'package:objectbox/objectbox.dart';

@Entity()
class BarcodeScale {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  bool? scanPriceFromScale;
  bool? scalePriceIncludeTax;
  int? scaleBarcodeDigits;
  int? scaleProductCodeDigits;
  int? scaleIntDigits;
  int? scaleDecimalDigits;
  bool? scaleProductCodeFirstInBarcode;
  List<String>? departments;
  List<String>? categories;
  List<String>? products;

  BarcodeScale(
      {this.id,
      this.name,
      this.fName,
      this.scanPriceFromScale,
      this.scalePriceIncludeTax,
      this.scaleBarcodeDigits,
      this.scaleProductCodeDigits,
      this.scaleIntDigits,
      this.scaleDecimalDigits,
      this.scaleProductCodeFirstInBarcode,
      this.departments,
      this.categories,
      this.products});

  BarcodeScale.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    scanPriceFromScale = json['scanPriceFromScale'];
    scalePriceIncludeTax = json['scalePriceIncludeTax'];
    scaleBarcodeDigits = json['scaleBarcodeDigits'];
    scaleProductCodeDigits = json['scaleProductCodeDigits'];
    scaleIntDigits = json['scaleIntDigits'];
    scaleDecimalDigits = json['scaleDecimalDigits'];
    scaleProductCodeFirstInBarcode = json['scaleProductCodeFirstInBracode'];
    // if (json['departments'] != null) {
    //   departments = <Departments>[];
    //   json['departments'].forEach((v) {
    //     departments!.add(new Departments.fromJson(v));
    //   });
    // }
    // if (json['categories'] != null) {
    //   categories = <Categories>[];
    //   json['categories'].forEach((v) {
    //     categories!.add(new Categories.fromJson(v));
    //   });
    // }
    // if (json['products'] != null) {
    //   products = <Products>[];
    //   json['products'].forEach((v) {
    //     products!.add(new Products.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['scanPriceFromScale'] = scanPriceFromScale;
    data['scalePriceIncludeTax'] = scalePriceIncludeTax;
    data['scaleBarcodeDigits'] = scaleBarcodeDigits;
    data['scaleProductCodeDigits'] = scaleProductCodeDigits;
    data['scaleIntDigits'] = scaleIntDigits;
    data['scaleDecimalDigits'] = scaleDecimalDigits;
    data['scaleProductCodeFirstInBracode'] = scaleProductCodeFirstInBarcode;
    // if (this.departments != null) {
    //   data['departments'] = this.departments!.map((v) => v.toJson()).toList();
    // }
    // if (this.categories != null) {
    //   data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    // }
    // if (this.products != null) {
    //   data['products'] = this.products!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
