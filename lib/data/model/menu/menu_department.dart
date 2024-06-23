import 'package:objectbox/objectbox.dart';

@Entity()
class MenuDepartment {
  @Id()
  int? idSeq;
  String? id;
  @Index()
  int? order;

  MenuDepartment({this.idSeq = 0, this.id, this.order});

  MenuDepartment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['order'] = order;
    return data;
  }

  // equals operator override

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MenuDepartment && id == other.id;
}
