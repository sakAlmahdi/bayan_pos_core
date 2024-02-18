import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/model/department/department.dart';
import 'package:bayan_pos_core/data/model/department/exract_categoty.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ExtractDepartment {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  late String id;
  @Index()
  int? order;
  String? image;
  String? name;
  String? fName;

  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;

  final categories = ToMany<ExtractCategory>();

  ExtractDepartment({
    required this.id,
    this.order,
    this.name,
    this.image,
    this.fName,
  });

  ExtractDepartment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order'];
    name = json['name'];
    fName = json['fName3'];

    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['order'] = order;
    data['name'] = name;
    data['fName3'] = fName;
    data['image'] = image;
    data['categories'] = categories.map((element) => element.toJson()).toList();
    return data;
  }

  Department convertToDepartment() {
    return Department(
      id: id,
      displayOrder: order,
      imageUrl: image,
      isActive: true,
      name: name,
    );
  }

  // from json
}
