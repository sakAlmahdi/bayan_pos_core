import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Address {
  @Id()
  int? idSeq;
  String? id;
  String? addressTypeId;
  String? name;
  String? fName;
  double? latitude;
  double? longitude;
  String? deliveryZoneId;
  String? description;
  String? mainStreet;
  String? byStreet;
  String? buildingNo;
  String? floor;
  String? apartmentNo;
  String? phone;
  String? popularPlace;
  String? zipCode;
  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
  @Transient()
  String? get getFullDescription =>
      " ${mainStreet} , ${byStreet} , 🏢 ${buildingNo} , 🚪 ${floor} - ${apartmentNo}";

  String? deviceCreatedOn;
  String? deviceCreatedBy;

  Address({
    this.idSeq = 0,
    this.id,
    this.addressTypeId,
    this.name,
    this.fName,
    this.latitude,
    this.longitude,
    this.deliveryZoneId,
    this.description,
    this.mainStreet,
    this.byStreet,
    this.buildingNo,
    this.floor,
    this.apartmentNo,
    this.phone,
    this.popularPlace,
    this.zipCode,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
  });

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    addressTypeId = json['addressTypeId'];
    name = json['name'];
    fName = json['fName'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    deliveryZoneId = json['deliveryZoneId'];
    description = json['description'];
    mainStreet = json['mainStreet'];
    byStreet = json['byStreet'];
    buildingNo = json['buildingNo'];
    floor = json['floor'];
    apartmentNo = json['apartmentNo'];
    phone = json['phone'];
    popularPlace = json['popularPlace'];
    zipCode = json['zipCode'];

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['addressTypeId'] = addressTypeId;
    data['name'] = name;
    data['fName'] = fName;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['deliveryZoneId'] = deliveryZoneId;
    data['description'] = description;
    data['mainStreet'] = mainStreet;
    data['byStreet'] = byStreet;
    data['buildingNo'] = buildingNo;
    data['floor'] = floor;
    data['apartmentNo'] = apartmentNo;
    data['phone'] = phone;
    data['popularPlace'] = popularPlace;
    data['zipCode'] = zipCode;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}
