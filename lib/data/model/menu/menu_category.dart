import 'package:objectbox/objectbox.dart';

@Entity()
class MenuCategory {
  @Id()
  int? idSeq;

  String? id;
  @Index()
  int? order;

  MenuCategory({this.idSeq = 0, this.id, this.order});

  MenuCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['order'] = order;
    return data;
  }
}
