import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/model/department/exract_categoty.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Category {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  int? displayOrder;
  String? imageUrl;

  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;
  // List<Products>? products;
  Category({
    this.id,
    this.name,
    this.fName,
    this.displayOrder,
    this.imageUrl,
  });

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    displayOrder = json['displayOrder'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['displayOrder'] = displayOrder;
    data['imageUr'] = imageUrl;

    return data;
  }

  ExtractCategory convertToExtractCategory() {
    return ExtractCategory(
      id: id ?? '',
      name: name,
      fName: fName,
      image: imageUrl,
      order: displayOrder,
    );
  }
}
