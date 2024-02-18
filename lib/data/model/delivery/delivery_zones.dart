import 'package:objectbox/objectbox.dart';

@Entity()
class DeliveryZone {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? deliveryZoneCoordinate;
  double? minimumDeliveryCharge;
  double? deliveryChargePerKM;

  DeliveryZone(
      {this.idSeq = 0,
      this.id,
      this.name,
      this.fName,
      this.deliveryZoneCoordinate,
      this.minimumDeliveryCharge,
      this.deliveryChargePerKM});

  DeliveryZone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    deliveryZoneCoordinate = json['deliveryZoneCoordinate'];
    minimumDeliveryCharge =
        double.tryParse(json['minimumDeliveryCharge'].toString()) ?? 0.0;
    deliveryChargePerKM =
        double.tryParse(json['deliveryChargePerKM'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['deliveryZoneCoordinate'] = deliveryZoneCoordinate;
    data['minimumDeliveryCharge'] = minimumDeliveryCharge;
    data['deliveryChargePerKM'] = deliveryChargePerKM;
    return data;
  }
}
