import 'package:bayan_pos_core/data/model/order/free_options.dart';
import 'package:bayan_pos_core/data/model/order/option.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Modifier {
  @Id()
  int? idSeq;
  String? id;
  int? minimumOptions;
  int? maximumOptions;
  String? name;
  String? fname;
  bool? isUnique;
  final options = ToMany<Option>();
  @Transient()
  String? get getName => name;
  // final freeOptions = ToMany<FreeOption>();

  Modifier({
    this.id,
    this.minimumOptions,
    this.isUnique,
    this.maximumOptions,
  });

  Modifier.fromJson(Map<String, dynamic> json) {
    id = json['id1'];
    name = json['name'];
    fname = json['fname'];
    isUnique = json['isUnique'];
    minimumOptions = json['minimumOptions2'];
    maximumOptions = json['maximumOptions3'];
    // if (json['freeOption'] != null) {
    //   json['freeOption'].forEach((v) {
    //     freeOptions.add(FreeOption.fromJson(v));
    //   });
    // }

    if (json['options'] != null) {
      json['options'].forEach((v) {
        options.add(Option.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id1'] = id;
    data['name'] = name;
    data['fname'] = fname;
    data['isUnique'] = isUnique;
    data['minimumOptions2'] = minimumOptions;
    data['maximumOptions3'] = maximumOptions;
    // data['freeOption'] = freeOptions.map((v) => v.toJson()).toList();
    data['options'] = options.map((v) => v.toJson()).toList();
    return data;
  }
}
