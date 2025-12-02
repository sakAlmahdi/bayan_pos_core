import 'package:objectbox/objectbox.dart';

@Entity()
class MenuProduct {
  @Id()
  int? idSeq;
  String? id;
  @Index()
  int? order;

  MenuProduct({this.idSeq = 0, this.id, this.order});

  MenuProduct.fromJson(Map<dynamic, dynamic> json) {
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
