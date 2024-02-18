import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/model/resturant_sections/table.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ResturantSection {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  // List<Table>? tables;
  final tables = ToMany<Table>();

  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;

  ResturantSection({
    this.id,
    this.name,
    this.fName,
  });

  ResturantSection.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    if (json['tables'] != null) {
      json['tables'].forEach((v) {
        tables.add(Table.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['tables'] = tables.map((v) => v.toJson()).toList();
    return data;
  }
}
