import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/model/department/category.dart';
import 'package:bayan_pos_core/data/model/department/exract_categoty.dart';
import 'package:bayan_pos_core/data/model/department/extract_department.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Department1 {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  int? displayOrder;
  String? imageUrl;

  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;

  final categories = ToMany<Category>();

  Department1({
    this.id,
    this.name,
    this.fName,
    this.displayOrder,
    this.imageUrl,
  });

  Department1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    displayOrder = json['displayOrder'];
    imageUrl = json['imageUrl'];
    if (json['categories'] != null) {
      json['categories'].forEach((v) {
        categories.add(Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['displayOrder'] = displayOrder;
    data['imageUrl'] = imageUrl;
    data['categories'] = categories.map((element) => element.toJson()).toList();

    return data;
  }

  ExtractDepartment toExtractDepartment() {
    List<ExtractCategory> exCategories = [];
    var extractDepartment = ExtractDepartment(
      id: id ?? '',
      image: imageUrl,
      name: name,
      fName: fName,
      order: displayOrder,
    );
    exCategories = categories
        .map((element) => element.convertToExtractCategory())
        .toList();
    extractDepartment.categories.clear();
    extractDepartment.categories.addAll(exCategories);
    return extractDepartment;
  }
}
