import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class PriceList {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  bool? priceIncludeTax;

  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;

  PriceList(
      {this.idSeq = 0, this.id, this.name, this.fName, this.priceIncludeTax});

  PriceList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    priceIncludeTax = json['priceIncludeTax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['priceIncludeTax'] = priceIncludeTax;
    return data;
  }
}
