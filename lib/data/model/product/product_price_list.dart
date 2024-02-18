import 'package:objectbox/objectbox.dart';

@Entity()
class ProductPriceList {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  double? price;

  ProductPriceList({this.id, this.price});

  ProductPriceList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = double.tryParse(json['price'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['price'] = price;
    return data;
  }
}
