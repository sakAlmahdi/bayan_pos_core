import 'package:objectbox/objectbox.dart';

@Entity()
class PriceListValue {
  @Id(assignable: true)
  int? idSeq;
  String? id;
  double? price;

  final slaps = ToMany<Slaps>();

  PriceListValue({
    this.idSeq,
    this.id,
    this.price,
  });

  PriceListValue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    if (json['slaps'] != null) {
      json['slaps'].forEach((v) {
        slaps.add(Slaps.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['price'] = price;
    data['slaps'] = slaps.map((v) => v.toJson()).toList();
    return data;
  }
}

@Entity()
class Slaps {
  @Id()
  int? idSeq;
  String? id;
  double? from;
  double? to;
  double? price;
  String? timeEventId;

  Slaps({
    this.from,
    this.to,
    this.price,
    this.timeEventId,
    this.id,
    this.idSeq,
  });

  Slaps.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    from = double.tryParse(json['fromQuantity'].toString()) ?? 0.0;
    to = double.tryParse(json['toQuantity'].toString()) ?? 0.0;
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    timeEventId = json['timeEventId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['fromQuantity'] = from;
    data['toQuantity'] = to;
    data['price'] = price;
    data['timeEventId'] = timeEventId;
    return data;
  }
}
