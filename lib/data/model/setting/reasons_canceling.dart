import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ReasonsCanceling {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;

  @Transient()
  String? get getMsg => BaseHelpersMethods.isPrimaryLang ? name : fName;
  ReasonsCanceling({this.id, this.name, this.fName});

  ReasonsCanceling.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    return data;
  }
}
