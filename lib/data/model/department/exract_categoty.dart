import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ExtractCategory {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  late String id;
  @Index()
  int? order;
  String? image;
  String? name;
  String? fName;

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  ExtractCategory({
    required this.id,
    this.order,
    this.name,
    this.image,
    this.fName,
  });

  ExtractCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order'];
    name = json['name'];
    fName = json['fName3'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order'] = order;
    data['name'] = name;
    data['image'] = image;
    data['fName3'] = fName;
    return data;
  }

  // from json
}
